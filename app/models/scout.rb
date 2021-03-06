class Scout < ApplicationRecord
  has_secure_password

  belongs_to :unit
  belongs_to :event, optional: true
  has_many :envelopes
  has_many :take_orders, through: :envelopes
  has_many :events, through: :unit
  has_many :site_sales, through: :scout_site_sales
  has_many :scout_site_sales
  has_many :online_sales
  has_many :prize_carts, dependent: :destroy
  has_many :sales_credits
  has_many :sales_credit_totals

  validates :first_name, :last_name, :unit_id, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :email, uniqueness: { case_sensitive: false }
  validate :must_have_one_unit_admin, if: Proc.new {|s| s.is_unit_admin_changed? && s.is_unit_admin == false}, on: :update

  before_save :fix_name!
  before_validation :downcase_email!
  before_save :set_event!
  after_create :send_registration_email!
  after_create :send_you_are_registered_email!, unless: Proc.new {|s| s.is_admin?}
  # after_create :create_prize_cart!
  before_save :update_is_admin!

  def name
    first_name + ' ' + last_name
  end

  def last_first_name
    last_name + ', ' + first_name
  end

  def self.admin
    where(is_financial_admin: true).or(Scout.where(is_take_orders_admin: true)).or(Scout.where(is_site_sales_admin: true)).or(Scout.where(is_prizes_admin: true)).or(Scout.where(is_admin: true)).or(Scout.where(is_warehouse_admin: true)).or(Scout.where(is_online_sales_admin: true))
  end

  def self.not_admin
    where(is_admin: false)
  end

  def self.active
    where(is_active: true)
  end

  def self.inactive
    where(is_active: false)
  end

  def total_bsa_prize_amounts(event)
    prize_cart(event).cart_prizes.joins(:prize).where("prizes.source = 'bsa'").sum(:prize_amount)
  end

  def prize_cart(event)
    prize_carts.where(event_id: event.id).first || prize_carts.create(event_id: event.id)
  end

  def total_sales(event)
    total = event.total_site_sale_sales(self, true)
    total += total_take_order_sales(event)
    total += total_online_sales(event)
    total
  end

  def sales(event=nil)
    total_sales(event)
  end

  def sales_credit_balance(event)
    sales_credits.where(event_id: event.id).sum(:amount)
  end

  def admin?
    [
      is_financial_admin, 
      is_take_orders_admin, 
      is_site_sales_admin,
      is_prizes_admin,
      is_warehouse_admin,
      is_unit_admin,
      is_online_sales_admin
    ].include? true
  end

  def activity?
    if scout_site_sales.any? || online_sales.any? || take_orders.any?
      true
    else
      false
    end
  end

  def take_order_credits(event, is_turned_in=true)
    if is_turned_in
      take_orders.where("envelopes.event_id = ?",event.id).where.not(status: 'in hand').inject(0){|sum,t| sum + t.take_order_line_items.sum(:value) }
    elsif is_turned_in == false
      take_orders.where("envelopes.event_id = ?",event.id).where(status: 'in hand').inject(0){|sum,t| sum + t.take_order_line_items.sum(:value) }
    else
      take_orders.where("envelopes.event_id = ?",event.id).inject(0){|sum,t| sum + t.take_order_line_items.sum(:value) }
    end
  end

  def total_online_sales(event)
    online_sales.where(event_id: event.id).sum(:amount)
  end

  def total_take_order_sales(event, is_turned_in=true)
    take_order_credits(event, is_turned_in)
  end

  def set_event!
    self.event_id = unit.events.active.last.id if unit.events && unit.events.active && unit.events.active.last
  end

  def event_site_sale_hours_worked(event)
    scout_site_sales.joins(:site_sale).where("site_sales.event_id = ?",event.id).sum(:hours_worked)
  end

  def open_envelope(event)
    open = envelopes.open.where(event_id: event.id).last
    unless open
      open = envelopes.create(event_id: event.id)
    end
    open
  end

  def open_envelope?(event)
    envelopes.open.where(event_id: event.id).any?
  end

  def create_prize_cart!
    prize_carts.create(event_id: @active_event) unless prize_carts.any?
  end

  def assign_full_rights!
    self.is_unit_admin = true
    self.is_take_orders_admin = true
    self.is_site_sales_admin = true
    self.is_online_sales_admin = true
    self.is_prizes_admin = true
    self.is_financial_admin = true
    self.is_warehouse_admin = true
    self.save
  end

  def event_sales_credits(event)
    totals = sales_credits.where(event_id: event.id).sum(:amount)
  end

  private

  def fix_name!
    self.first_name = first_name.capitalize if first_name
    self.last_name = last_name.capitalize if last_name
  end

  def send_registration_email!
    Thread.new do
      ScoutMailer.registration(self.id).deliver_now!
    end
  end

  def send_you_are_registered_email!
    Thread.new do
      ScoutMailer.you_are_registered(self.id).deliver_now!
    end
  end

  def update_is_admin!
    if admin?
      self.is_admin = true
    else
      self.is_admin = false
    end
  end

  def must_have_one_unit_admin
    if unit.scouts.where(is_unit_admin: true).size == 1
      errors.add(:unit_admin, "must be selected since there are no other unit administrators currently.")
    end
  end

  def downcase_email!
    self.email = email.downcase if email
  end

end
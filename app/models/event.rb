class Event < ApplicationRecord
  belongs_to :unit
  has_many :purchase_orders
  has_many :prizes
  has_many :products
  has_many :direct_sales, dependent: :destroy
  has_many :take_orders, dependent: :destroy
  has_many :site_sales, dependent: :destroy
  has_many :line_items, through: :take_orders
  has_many :scout_site_sales, through: :site_sales
  has_many :take_order_purchase_orders
  has_many :purchase_orders, dependent: :destroy

  validates :name, presence: true

  after_create :add_default_products!
  after_create :add_default_prizes!

  def self.active
    where(is_active: true)
  end

  def open_take_order_purchase_order
    open = take_order_purchase_orders.where(status: 'open').first
    unless open
      open = take_order_purchase_orders.create(event_id: self.id ? self.id : nil)
    end
    open
  end

  def top_take_order_sellers
    take_orders.includes(:scouts).group
  end

  def top_site_sale_sellers
  end

  def total_site_sales(scout)
    total = 0
    site_sales.each do |site_sale|
      total += site_sale.credited_sales(scout) || 0
    end
    total
  end

  private

  def add_default_products!
    Product.default.each do |product|
      self.products.where(name: product.name).first_or_create(name: product.name, quantity: product.quantity, retail_price: product.retail_price, url: product.url)
    end  
  end

  def add_default_prizes!
    Prize.default.each do |prize|
      self.prizes.where(name: prize.name).first_or_create(name: prize.name, amount: prize.amount, url: prize.url, source: prize.source, source_id: prize.source_id, is_by_level: prize.is_by_level, description: prize.description)
    end   
  end

end

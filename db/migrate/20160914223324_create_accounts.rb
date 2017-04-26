class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.integer :event_id
      t.string :name
      t.string :account_type
      t.integer :rank, default: 0
      t.boolean :is_cash
      t.boolean :is_credit_card, default: false
      t.boolean :is_due_to_bsa, default: false
      t.boolean :is_take_order_eligible, default: false
      t.boolean :is_site_sale_eligible, default: false
      t.boolean :is_bank_account_depositable, default: false
      t.timestamps
    end
  end
end

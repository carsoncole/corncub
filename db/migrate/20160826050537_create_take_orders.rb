class CreateTakeOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :take_orders do |t|
      t.integer :envelope_id
      t.integer :purchase_order_id
      t.string :status, default: 'received', null: false
      t.string :customer_name
      t.string :customer_address
      t.string :customer_email
      t.integer :account_id
      t.decimal :total_value, precision: 5, scale: 2
      t.integer :money_received_by_id
      t.datetime :money_received_at
      t.boolean :is_paid_by_credit_card, default: false
      t.integer :credit_card_order_number
      t.string :note
      t.timestamps
    end
  end
end

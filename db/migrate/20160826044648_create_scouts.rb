class CreateScouts < ActiveRecord::Migration[5.0]
  def change
    create_table :scouts do |t|
      t.integer :unit_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest, null: false, default: ""
      t.integer :event_id
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.boolean :is_active, default: true
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :last_sign_in_at
      t.string   :last_sign_in_ip
      t.boolean :is_unit_admin, default: false
      t.boolean :is_financial_admin, default: false
      t.boolean :is_take_orders_admin, default: false
      t.boolean :is_site_sales_admin, default: false
      t.boolean :is_online_sales_admin, default: false
      t.boolean :is_prizes_admin, default: false
      t.boolean :is_warehouse_admin, default: false
      t.boolean :is_admin, default: false
      t.timestamps
    end
  end

end

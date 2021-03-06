class CreatePrizes < ActiveRecord::Migration[5.0]
  def change
    create_table :prizes do |t|
      t.integer :event_id
      t.string :name
      t.decimal :sales_amount, precision: 10, scale: 2
      t.string :description
      t.string :source
      t.string :source_description
      t.string :source_id
      t.boolean :is_by_level
      t.string :url
      t.string :group
      t.string :collection_name
      t.decimal :cost, precision: 10, scale: 2, default: 0, null: false
      t.boolean :reduces_sales_credits, default: true

      t.timestamps
    end
  end
end

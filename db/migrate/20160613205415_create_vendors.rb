class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.time :open_at
      t.time :close_at
      t.time :delivery_start
      t.time :delivery_end
      t.decimal :delivery_cost
      t.decimal :delivery_minimum
      t.string :cuisine
      t.string :price_range
      t.string :image_url

      t.timestamps null: false
    end
  end
end

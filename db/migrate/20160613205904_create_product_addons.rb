class CreateProductAddons < ActiveRecord::Migration
  def change
    create_table :product_addons do |t|
      t.string :name
      t.decimal :price_delta

      t.timestamps null: false
    end
  end
end

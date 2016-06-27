class AddProductToProductAddons < ActiveRecord::Migration
  def change
    add_reference :product_addons, :product, index: true, foreign_key: true
  end
end

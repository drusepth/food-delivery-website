class AddProductsToMenu < ActiveRecord::Migration
  def change
    add_reference :menus, :product
  end
end

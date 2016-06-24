class AddMenuCategoryToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :menu_category
  end
end

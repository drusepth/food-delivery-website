class AddMenuToMenuCategory < ActiveRecord::Migration
  def change
    add_reference :menu_categories, :menu
  end
end

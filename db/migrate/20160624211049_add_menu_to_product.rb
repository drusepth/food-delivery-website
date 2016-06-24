class AddMenuToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :menu
  end
end

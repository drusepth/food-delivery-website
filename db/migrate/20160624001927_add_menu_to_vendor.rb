class AddMenuToVendor < ActiveRecord::Migration
  def change
    add_reference :vendors, :menu
  end
end

class AddVendorToMenu < ActiveRecord::Migration
  def change
    add_reference :menus, :vendor
  end
end

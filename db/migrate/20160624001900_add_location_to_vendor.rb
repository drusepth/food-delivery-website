class AddLocationToVendor < ActiveRecord::Migration
  def change
    add_reference :vendors, :location
  end
end

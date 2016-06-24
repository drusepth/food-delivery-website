class AddVendorToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :vendor, required: false
  end
end

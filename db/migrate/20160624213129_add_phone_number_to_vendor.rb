class AddPhoneNumberToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :phone, :string
  end
end

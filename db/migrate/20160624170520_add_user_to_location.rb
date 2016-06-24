class AddUserToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :user, required: false
  end
end

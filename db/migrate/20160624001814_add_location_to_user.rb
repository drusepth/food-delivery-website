class AddLocationToUser < ActiveRecord::Migration
  def change
    add_reference :users, :location
  end
end

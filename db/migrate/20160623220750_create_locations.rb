class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :town
      t.string :province
      t.string :postalcode

      t.timestamps null: false
    end
  end
end

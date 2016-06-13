class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :description
      t.time :enable_at
      t.time :disable_at

      t.timestamps null: false
    end
  end
end

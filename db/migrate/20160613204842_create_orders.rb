class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :submitted
      t.datetime :scheduled_delivery

      t.timestamps null: false
    end
  end
end

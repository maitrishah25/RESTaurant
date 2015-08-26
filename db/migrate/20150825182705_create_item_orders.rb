class CreateItemOrders < ActiveRecord::Migration
  def up
    create_table :item_orders do |t|
      t.integer :food_item_id
      t.integer :party_id
      t.integer :seat_num
      t.integer :guest_id
      t.string :date
      t.timestamps
    end
  end
  def down
    drop_table :item_orders
  end
end

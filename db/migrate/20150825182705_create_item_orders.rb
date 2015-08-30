class CreateItemOrders < ActiveRecord::Migration
  def up
    create_table :item_orders do |t|
      t.integer :food_item_id
      t.integer :party_id
      t.boolean :complete, :default => FALSE
      t.timestamps
    end
  end
  def down
    drop_table :item_orders
  end
end

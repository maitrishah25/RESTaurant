class CreateParties < ActiveRecord::Migration
  def up
    create_table :parties do |t|
      t.boolean :is_paid?
      t.integer :table_num
      t.integer :num_of_guests
      t.timestamps 
    end
  end
  def down
    drop_table :parties
  end
end

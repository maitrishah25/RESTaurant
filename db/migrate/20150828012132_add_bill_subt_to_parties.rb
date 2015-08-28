class AddBillSubtToParties < ActiveRecord::Migration
  def change
    add_column :parties, :bill_subt, :decimal, :default => 0
  end
  def down
    remove_column :parties, :bill_subt, :decimal
  end
end

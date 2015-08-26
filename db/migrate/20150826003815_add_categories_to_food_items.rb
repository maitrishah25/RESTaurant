class AddCategoriesToFoodItems < ActiveRecord::Migration
  def change
    add_column :food_items, :category, :string
  end
end

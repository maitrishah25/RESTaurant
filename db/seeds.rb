require './models/food_item'

File.read('./db/food_items.data').split("\n").each do |line|
  row = line.split('|')
  FoodItem.create({
    name: row[0],
    price: row[1],
    allergens: row[2],
    category: row[3]
  })
end

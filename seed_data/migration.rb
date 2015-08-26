# load my postgres ruby adapter
require 'pg'
# require 'sinatra-activerecord'
# require './models/food_item'
path_to_seed_dir = '/Users/maitrikumar/src/wdi/cheesy_burritos/seed_data/'

# connect to our postgres facilities and create the tables

# psql postgres
conn = PG.connect(dbname: 'postgres')



# \c cheesy_burritos
conn = PG.connect(dbname: 'cheesy_burritos')

conn.exec("COPY food_items (name, price, allergens)
FROM '#{path_to_seed_dir}food_items.data' with (format csv, delimiter '|')")

# File.read('./food_items.data').split("\n").each do |line|
#   row = line.split('|')
#   FoodItem.create({
#     name: row[1],
#     price: row[2],
#     allergens: row[3]
#   })
# end

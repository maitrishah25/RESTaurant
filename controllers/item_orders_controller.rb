class ItemOrdersController < ApplicationController




  get '/new' do
    # party.id = item_order.party_id
    @party = Party.find(params["pid"])
    @food_items = FoodItem.all
    erb :'item_orders/new'
  end

end

# require 'pg'
# conn = PG.connect(dbname: 'postgres')
# conn = PG.connect(dbname: 'cheesy_burritos')
# conn.exec("SELECT * FROM food_items where category = 'Burritos';")

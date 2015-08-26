class ItemOrdersController < ApplicationController




  get '/new' do

    # party.id = item_order.party_id
    @party = Party.find(params["pid"])
    @food_items = FoodItem.all
    @burritos = FoodItem.where(:category => 'Burritos')
    @tacos = FoodItem.where(:category => 'Tacos')
    @nachos = FoodItem.where(:category => 'Nachos')
    @fajitas = FoodItem.where(:category => 'Fajitas')

    erb :'item_orders/new'
  end

  post '/' do
    @item_order = ItemOrder.create(params[:item_order])
    redirect "parties/#{@item_order.party_id}"
  end

end

# require 'pg'
# conn = PG.connect(dbname: 'postgres')
# conn = PG.connect(dbname: 'cheesy_burritos')
# conn.exec("SELECT * FROM food_items where category = 'Burritos';")

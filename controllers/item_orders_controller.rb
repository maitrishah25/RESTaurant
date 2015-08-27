class ItemOrdersController < ApplicationController

  get '/' do
    @item_orders = ItemOrder.all
    erb :'item_orders/index'
  end

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

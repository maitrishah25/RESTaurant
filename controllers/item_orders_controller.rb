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
    food_items = FoodItem.all
    party_id = params['party_id']
    food_item_id = params['food_item_id']
    @party = Party.find(party_id)

      ItemOrder.create({
        party_id: party_id,
        food_item_id: food_item_id
        })

    #  food_items.each do |food_item|
     #
    #   party = ItemOrder.find(params[:pid])
    #   @party.bill_subt += food_item.price
     #

    redirect "parties/#{@party.id}"

  end

  delete '/:id' do
    ItemOrder.delete(params[:id])
    redirect '/item_orders'
  end

end

class ItemOrdersController < ApplicationController

  get '/' do
  @open_orders = ItemOrder.where(complete:[FALSE])
  @item_orders = []
  @open_orders.map do |item_order|
    if item_order.complete == FALSE
      @item_orders.push(item_order)
      end
    end
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


    redirect "parties/#{@party.id}"

  end

  put '/:id' do
    item_order = ItemOrder.find(params[:id])
    item_order.update(params[:item_order])
    redirect '/item_orders'
  end

end

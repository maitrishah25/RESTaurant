class WelcomeController < ApplicationController

  get '/test' do
    "YAY"
  end

  get '/' do
    @parties = Party.all
    @table_num = params[:table_num]
    erb :index
  end

  get '/editall' do
    @parties = Party.all
    food_item = ItemOrder.where(:food_item_id => params[:id])
    @item_orders = ItemOrder.where(:party_id => params[:id])
    @table_num = params[:table_num]
    erb :editall
  end

  put '/editall' do
    @parties = Party.all
    @party.update(params[:party])
    food_item = ItemOrder.where(:food_item_id => params[:id])
    @item_orders = ItemOrder.where(:party_id => params[:id])
    @table_num = params[:table_num]
    erb :editall
  end


end

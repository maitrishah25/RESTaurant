class PartiesController < ApplicationController

  get '/' do
    @parties = Party.all
    erb :'parties/index'
  end

  get '/new' do
    @parties = Party.all
    @table_num = params[:table_num]
    erb :'parties/new'
  end

  post '/new' do
    @party = Party.create(params[:party])
    redirect "/item_orders/new?pid=#{@party.id}"
  end

  get '/:id' do
    @party = Party.find(params[:id])
    @item_orders = ItemOrder.where(:party_id => params[:id])
    @table_num = params[:table_num]
    erb :'parties/show'
  end

  delete '/:id' do
    party = ItemOrder.find(params[:id]).party_id
    ItemOrder.delete(params[:id])
    redirect "/parties/#{party}"
  end

  get '/:id/edit' do
    @party = Party.find(params[:id])
    @item_orders = ItemOrder.where(:party_id => params[:id])
    @table_num = params[:table_num]
    erb :'parties/edit'
  end

  put '/:id/edit' do
    @party = Party.find(params[:id])
    @party.update(params[:party])
    @item_orders = ItemOrder.where(:party_id => params[:id])
    @table_num = params[:table_num]
    erb :'parties/edit'
  end


end

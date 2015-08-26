class PartiesController < ApplicationController

  get '/' do
    @parties = Party.all
    erb :'parties/index'
  end

  get '/new' do
    @parties = Party.all
    erb :'parties/new'
  end

  post '/new' do
    @party = Party.create(params[:party])
    redirect "/item_orders/new?pid=#{@party.id}"
  end

end

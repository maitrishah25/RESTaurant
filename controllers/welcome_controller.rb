class WelcomeController < ApplicationController

  get '/test' do
    "YAY"
  end

  get '/' do
    @parties = Party.all
    @table_num = params[:table_num]
    erb :index
  end


end

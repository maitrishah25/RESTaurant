class FoodItemsController < ApplicationController

get '/' do
  @food_items = FoodItem.all
  erb :'food_items/index'
end

get '/allergens' do
  erb :'food_items/allergens'
end

end

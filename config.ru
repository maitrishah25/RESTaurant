# CONFIG
require 'bundler'
Bundler.require()

# MODELS
require './models/food_item'
require './models/item_order'
require './models/party'

# CONTROLLERS
require './controllers/application_controller'
require './controllers/food_items_controller'
require './controllers/item_orders_controller'
require './controllers/parties_controller'
require './controllers/welcome_controller'

# ROUTING

map ('/food_items'){run FoodItemsController}
map ('/item_orders'){run ItemOrdersController}
map ('/parties'){run PartiesController}
map ('/'){run WelcomeController}

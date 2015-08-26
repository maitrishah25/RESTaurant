class Party < ActiveRecord::Base
  has_many :item_orders
end

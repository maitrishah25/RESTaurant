class ItemOrder < ActiveRecord::Base
  belongs_to :food_item
  belongs_to :party

  validates_presence_of :party_id, :food_item_id

end

class Party < ActiveRecord::Base
  has_many :item_orders

  def total
    self.inject {|total,x| total + x}
  end
end

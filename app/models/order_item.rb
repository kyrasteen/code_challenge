class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item

  def find_item
    Item.find(item_id)
  end

end

class Item < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :favorites

  def is_favorited?
    favorites.any?
  end

  def found_favorite
    favorites.find_by(item_id: self.id).id
  end
end

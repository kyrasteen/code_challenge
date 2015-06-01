class Item < ActiveRecord::Base
  include InvalidatesCache

  has_many :order_items
  has_many :orders, through: :order_items
  has_many :favorites

  def is_favorited?
    favorites.any?
  end

  def found_favorite
    favorites.find_by(item_id: self.id).id
  end

  def cached_price
    Rails.cache.fetch("item-price") do
      self.price
    end
  end
end

class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
  item = Item.find_by(name: params[:data_value])
  Favorites.create(item_id: item.id)
  end
end

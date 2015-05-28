class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    Item.find(params[:item_id]).favorites.create
    render json: {success: true}
  end
end

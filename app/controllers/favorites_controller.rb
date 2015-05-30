class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    Item.find(params[:item_id].to_i).favorites.create
    render json: {success: true}
  end

  def destroy
    fav_id = Favorite.find_by(item_id: params[:id].to_i)
    Favorite.delete(fav_id)
    render json: {success: true}
  end
end

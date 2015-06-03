class ItemsController < ApplicationController
  respond_to :json, :html

  def index
    current_page = params[:current_page].to_i || 0
    @items = Item.all.limit(10).offset(10 * current_page)

    respond_with @items

  end

  def show
    @item = Item.find(params[:id].to_i)
  end

end

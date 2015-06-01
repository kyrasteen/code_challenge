class ItemsController < ApplicationController

  def index
    params[:current_page] ||= 0
    @items = Item.all.limit(10).offset(10 * params[:current_page].to_i)

    respond_to do |format|
      format.json { render :json=> @items }
      format.html { @items }
    end

  end

  def show
    @item = Item.find(params[:id].to_i)
  end

end

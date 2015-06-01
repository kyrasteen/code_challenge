class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    item = Item.find(params[:item_id].to_i)
    price = item.cached_price
    order = Order.create(amount: price)
    order.order_items.create(item_id: item.id)
    if order.save
      redirect_to order_path(order)
      OrderMailer.send_order_notice(order).deliver
    else
      flash[:error] = "something went wrong"
    end
  end
end

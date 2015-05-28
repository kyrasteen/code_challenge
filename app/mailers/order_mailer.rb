class OrderMailer < ActionMailer::Base
  default from: "kyra.m.weber@example.com"

  def send_order_notice(order)
    @amount = order.amount
    @item = order.found_item
    mail( :to => 'storedom-overlord@example.com',
          :subject => "order placed")
  end
end

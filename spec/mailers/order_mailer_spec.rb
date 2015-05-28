require "rails_helper"

RSpec.describe OrderMailer, type: :mailer do
  it "sends an email" do
    item = Item.create(name: "socks", description: "not smelly", price: 3.00)
    order = Order.create(amount: item.price)
    order.order_items.create(item_id: item.id)
    expect { OrderMailer.send_order_notice(order) }.to change { ActionMailer::Base.deliveries.count }.by(1)
  end
end

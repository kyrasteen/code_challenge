require 'rails_helper'

describe "Item" do
  it "has a price" do
    item = Item.create(name:"sock", description:"just one", price: 4.00)
    expect(item.price).to eq(4.00)
  end
end

require 'rails_helper'

describe "Items_spec", type: :feature do
  it "paginates items" do
    items = []
    11.times { items << Item.create(name: "socks", description:"smelly", price: 4.00)}
    expect(page).to have_content(items.first.name)
    expect(page).not_to have_content(items.last.name)
  end
end

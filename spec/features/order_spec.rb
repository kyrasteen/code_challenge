require 'rails_helper'

describe "places order" do
  it "with one item" do
    item = Item.create(name:"socks", description: "not smelly", price: 3.00)
    visit item_path(item)
    click_link_or_button("Make order")
    expect(page).to have_content("Here's your order information")
    expect(page).to have_content(item.name)
  end
end

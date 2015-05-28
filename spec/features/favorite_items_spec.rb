require "rails_helper"

describe "Favorite Items" do
  xit "adds a favorite" do
    Item.create(name: "socks", description: "not smelly", price: 3.00)
    visit root_path
    find(".favorite").click
    expect(page).to have_content("remove from favorites")
  end

  it "shows a list of favorites" do
    item = Item.create(name: "socks", description: "not smelly", price: 3.00)
    Item.create(name: "shoes", description: "nice", price: 3.00)
    visit items_path
    first(".favorite").click
    visit favorites_path
    expect(page).to have_content(item.name)

  end
end

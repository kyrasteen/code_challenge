require 'rails_helper'

describe "Items_spec", type: :feature do
  it "paginates items", js: true do
    items = []
    10.times { items << Item.create(name: "socks", description:"smelly", price: 4.00)}
    lasti = Item.create(name: "shoes", description: "nice")
    visit items_path
    expect(page).to have_content(items.first.name)
    expect(page).not_to have_content(lasti.name)
    page.execute_script('window.scrollTo(0,200000)')
    expect(page).to have_content(lasti.name)
    expect(page).to have_content(items.first.name)
  end
end

require 'rails_helper'

RSpec.describe 'When a user visits a vending machine show page', type: :feature do
  before :each do
    @owner = Owner.create(name: "Sam's Snacks")
    @dons  = @owner.machines.create(location: "Don's Mixed Drinks")
    @snack_1 = Snack.create(name: "Snickers", price: 1)
    @snack_2 = Snack.create(name: "Doritos", price: 2)
    @snack_3 = Snack.create(name: "Muffin", price: 3)
  end
  scenario 'they see the location of that machine' do

    visit machine_path(@dons)
save_and_open_page
    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end

  scenario 'they see the name of all of the snacks associated with that vending machine along with their price' do

    visit machine_path(@dons)

    expect(page).to have_content(@snack_1.name)
    expect(page).to have_content(@snack_1.price)
    expect(page).to have_content(@snack_2.name)
    expect(page).to have_content(@snack_2.price)
  end

  it "they see the average price of snacks" do
    visit machine_path(@dons)

    expect(page).to have_content("Average snack price: $3")
  end

end

# As a visitor
# When I visit a vending machine show page
# I also see an average price for all of the snacks in that machine

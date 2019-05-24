require 'rails_helper'

RSpec.describe "When a user visits the snack show page", type: :feature do
  before :each do
  scenario "they see the name of the snack, price" do

    visit snack_path(@snack_1)
    save_and_open_page

    expect(page).to have_content(@snack_1.name)
    expect(page).to have_content(@snack_1.price)
    end
  end
    # , locations, avg price of snack in those vending machines" do
end

# User Story 3 of 3
#
# As a visitor
# When I visit a snack show page
# I see the name of that snack
#   and I see the price for that snack
#   and I see a list of locations with vending
#    machines that carry that snack
#   and I see the average price for snacks
#    in those vending machines
#   and I see a count of the different kinds
#   of items in that vending machine.

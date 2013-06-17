require 'spec_helper'

feature "user views beer info page", %q{
  As a User
  I want to view the page for a particular Beer
  So that I can see all of the details about that Beer
} do

  # Acceptance Criteria
  # * I can see the abv
  # * I can see the price
  # * I can see the type

  given!(:beer) { FactoryGirl.create(:beer) }

  scenario "user views a beer page" do
    visit beer_path(beer)
    expect(page).to have_content beer.abv
    expect(page).to have_content beer.price
    expect(page).to have_content beer.style
  end
end

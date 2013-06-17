require 'spec_helper'

feature "user likes a beer", %q{
  As a User
  I want to like a beer
  So that I can tell everybody which beer is the best
} do

  # Acceptance Criteria
  # * If I haven't already liked the beer
  #   * I see a button to like the beer
  # * If I have already liked the beer
  #   * I dont see a button to like the beer

  given(:user) { FactoryGirl.create(:user) }
  given!(:beer) { FactoryGirl.create(:beer) }

  scenario "user views a beer" do
    sign_in_as(user)
    visit beer_path(beer)
    click_on "Like"
    expect(page).to have_content "Beer liked successfully!"
  end
end

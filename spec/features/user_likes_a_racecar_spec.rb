require 'spec_helper'

feature "user likes a racecar", %q{
  As a User
  I want to like a racecar
  So that I can show my appreciation for cool cars
} do

  # Acceptance Criteria
  # * If I haven't already liked the racecar
  #   * I see a button to like the racecar
  # * If I have already liked the racecar
  #   * I dont see a button to like the racecar

  given(:user) { FactoryGirl.create(:user) }
  given!(:racecar) { FactoryGirl.create(:racecar) }

  scenario "user views a racecar" do
    sign_in_as(user)
    visit racecar_path(racecar)
    click_on "Like"
    expect(page).to have_content "Racecar liked successfully!"
  end
end

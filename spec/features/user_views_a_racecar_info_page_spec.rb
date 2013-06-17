require 'spec_helper'

feature "user views a racecar info page", %q{
  As a User
  I want to view the page for a Racecar
  So that I can read more detailed information about it
} do

  # Acceptance Criteria
  # * I can see the color
  # * I can see the crash test rating
  # * I can see the name
  # * I can see the top speed

  given!(:racecar) { FactoryGirl.create(:racecar) }

  scenario "user views a racecar" do
    visit racecar_path(racecar)
    expect(page).to have_content racecar.name
    expect(page).to have_content racecar.color
    expect(page).to have_content racecar.crash_test_rating
    expect(page).to have_content racecar.top_speed
  end
end

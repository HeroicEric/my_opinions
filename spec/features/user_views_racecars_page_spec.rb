require 'spec_helper'

feature "user views racecars page", %q{
  As a User
  I want to view all of the Racears
  So that kill some time
} do

  # Acceptance Criteria
  # * I can see each of the racecars

  given!(:racecar1) { FactoryGirl.create(:racecar) }
  given!(:racecar2) { FactoryGirl.create(:racecar) }

  scenario "user views all of the racecars" do
    visit racecars_path
    expect(page).to have_content racecar1.name
    expect(page).to have_content racecar2.name
  end
end

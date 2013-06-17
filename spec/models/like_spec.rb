require 'spec_helper'

describe Like do
  it { should validate_presence_of :racecar_id }
  it { should validate_presence_of :user_id }

  it { should belong_to :user }
  it { should belong_to :racecar }

  it { should_not allow_mass_assignment_of :user_id }
  it { should_not allow_mass_assignment_of :racecar_id }
end

require 'spec_helper'

describe Like do
  it { should validate_presence_of :likeable_id }
  it { should validate_presence_of :user_id }

  it { should belong_to :user }
  it { should belong_to :likeable }

  it { should_not allow_mass_assignment_of :user_id }
  it { should_not allow_mass_assignment_of :likeable_id }
end

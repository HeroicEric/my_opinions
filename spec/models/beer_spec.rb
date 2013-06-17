require 'spec_helper'

describe Beer do
  it { should validate_presence_of :price }
  it { should validate_presence_of :style }
  it { should validate_presence_of :abv }

  it { should have_many(:likes).dependent(:destroy) }
end

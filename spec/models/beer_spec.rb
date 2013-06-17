require 'spec_helper'

describe Beer do
  it { should validate_presence_of :price }
  it { should validate_presence_of :type }
  it { should validate_presence_of :abv }
end

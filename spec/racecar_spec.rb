require 'spec_helper'

describe Racecar do
  it { should validate_presence_of :name }
  it { should validate_presence_of :top_speed }
  it { should validate_presence_of :color }
  it { should validate_presence_of :crash_test_rating }
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :racecar do
    sequence(:name) { |n| "super cool #{n} car" }
    top_speed 68
    color "red"
    crash_test_rating 12
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beer do
    price 1
    style "lager"
    abv 1.5
  end
end

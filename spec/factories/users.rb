# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "somebody#{n}@somewhere.com" }
    password "acme123456"
  end
end

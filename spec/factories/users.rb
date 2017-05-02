require 'faker'

FactoryGirl.define do
  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    address Faker::Address.street_name
    username Faker::Internet.user_name(5..8)
    email Faker::Internet.email
    password Faker::Internet.password(8)
  end
end

FactoryGirl.define do
  factory :property do
    price 1000
    address Faker::Address.street_name
    identifier 'identifier'
    user
    property_type
  end
end

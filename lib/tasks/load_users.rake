namespace :load_data do

  desc "Loads all"
  task all: :environment do
    Rake::Task['load_data:property_types'].invoke
    Rake::Task['load_data:users'].invoke
  end
  
  desc "Create property types"
  task property_types: :environment do
    10.times do |t|
      update_or_create_property_type(name: Faker::GameOfThrones.house)
    end
  end

  desc "Create users"
  task users: :environment do
    10.times do |d|
      user = update_or_create_user(
        username: Faker::Internet.user_name("user#{d}"),
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: "test-user-#{d}@test.com",
        password: "password",
        address: Faker::Address.street_address,
      )

      3.times do |ap|
        property = update_or_create_property(
          price: Random.rand(100000000),
          address: Faker::GameOfThrones.city,
          identifier: Faker::Internet.password(10, 20),
          user_id: user.id,
          property_type_id: Random.rand(PropertyType.all.count),
        )

        4.times do |p|
          update_or_create_photo(url: "properties/property-#{p+1}.jpg", property_id: property.id)
        end

        5.times do |f|
          update_or_create_feature(description: Faker::ChuckNorris.fact, property_id: property.id)
        end
      end
    end
  end

  # Helpers

  def update_or_create_user(attributes)
    user = User.find_or_initialize_by(email: attributes.delete(:email))
    user.update_attributes(attributes)
    user
  end

  def update_or_create_bids(attributes)
    bid = Bid.find_or_initialize_by(user_id: attributes.delete(:user_id))
    bid.update_attributes(attributes)
    bid
  end

  def update_or_create_feature(attributes)
    feature = Feature.find_or_initialize_by(property_id: attributes.delete(:property_id))
    feature.update_attributes(attributes)
    feature
  end

  def update_or_create_photo(attributes)
    photo = Photo.find_or_initialize_by(property_id: attributes.delete(:property_id), url: attributes.delete(:url))
    photo.update_attributes(attributes)
    photo
  end

  def update_or_create_property_type(attributes)
    type = PropertyType.find_or_initialize_by(name: attributes.delete(:name))
    type.update_attributes(attributes)
    type
  end

  def update_or_create_property(attributes)
    property = Property.find_or_initialize_by(user_id: attributes.delete(:user_id))
    property.update_attributes(attributes)
    property
  end

  def update_or_create_notification(attributes)
    notification = Notification.find_or_initialize_by(topic: attributes.delete(:topic))
    notification.update_attributes(attributes)
    notification
  end
end

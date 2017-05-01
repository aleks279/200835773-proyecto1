class Property < ActiveRecord::Base
  belongs_to :user
  has_one :property_type
  has_many :photos
  has_many :features
  has_many :bids
end

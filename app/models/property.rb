class Property < ActiveRecord::Base
  belongs_to :user
  belongs_to :advertisement
  has_one :property_type
  has_many :photos
  has_many :features
end

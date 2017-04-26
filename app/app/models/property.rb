class Property < ActiveRecord::Base
  belongs_to :user
  has_one :property_type
end

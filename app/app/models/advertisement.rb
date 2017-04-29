class Advertisement < ActiveRecord::Base
  validates :date_posted, :date_expiry, presence: true

  belongs_to :user
  has_one :property
end

class Photo < ActiveRecord::Base
  validates :url, presence: true

  belongss_to :property
end

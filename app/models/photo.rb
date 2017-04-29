class Photo < ActiveRecord::Base
  validates :url, presence: true

  belongs_to :property
end

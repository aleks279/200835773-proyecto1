class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :first_name, :last_name, :address, presence: true

  has_many :notifications
  has_many :bids
  has_many :advertisements
  has_many :properties
end

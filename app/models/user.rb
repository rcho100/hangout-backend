class User < ApplicationRecord
  has_many :hangouts
  has_many :rsvps
  has_many :rsvped_hangouts, through: :rsvps, source: :hangout

  has_secure_password
  validates :email, presence: true, uniqueness: true
end

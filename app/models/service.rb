class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :tags, as: :tagable
end

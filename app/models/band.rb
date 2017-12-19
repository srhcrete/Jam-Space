class Band < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :tags, as: :tagable
  has_many :reviews
end

class Band < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :tags, as: :tagable
  has_many :reviews
  serialize :members, Array
end

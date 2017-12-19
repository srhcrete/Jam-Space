class User < ApplicationRecord
  has_many :bands
  has_many :services
  has_many :bookings, through: :bands
  has_many :bookings, through: :services
  has_many :reviews, through: :bands
  has_many :reviews, through: :services
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

class User < ApplicationRecord

  has_many :bands
  has_many :services
  has_many :bookings, through: :bands
  has_many :bookings, through: :services
  has_many :reviews, through: :bands
  has_many :reviews, through: :services

  validates :email, :presence => true
  validates :email, :uniqueness => true
  validates :name, :presence => true
  validates :password_digest, :presence => true


  has_attached_file :avatar, styles: { medium: "100x100>", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end

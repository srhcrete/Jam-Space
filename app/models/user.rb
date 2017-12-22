class User < ApplicationRecord
  has_secure_password

  attr_accessor :password
  before_save :encrypt_password

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

  def encrypt_password
    if password_digest.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_digest = BCrypt::Engine.hash_secret(password_digest, password_salt)
    end
  end

  def self.authenticate(email, password_digest)
    user = User.find_by_email(email)
    if user && user.password_digest == BCrypt::Engine.hash_secret(password_digest, user.password_salt)
      user
    else
      nil
    end
  end

  # def encrypt_password
  #   self.encrypted_password = BCrypt::Password.create(password) if password.present?
  # end
  #
  # def match_password(login_password="")
  #   BCrypt::Password.new(password) == login_password
  # end
end

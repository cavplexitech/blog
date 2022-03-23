class User < ApplicationRecord
  # adds virtual attributes for authentication
  has_secure_password

  # adds a profile picture
  has_one_attached :profile_picture

  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
end

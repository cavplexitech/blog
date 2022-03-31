class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # :lockable, :timeoutable, :trackable

  has_one :profile, dependent: :destroy
  has_many :articles, dependent: :destroy
  accepts_nested_attributes_for :profile
end

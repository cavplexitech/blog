class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # :lockable, :timeoutable, :trackable

  has_one :profile, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :pending_friendships, -> { where confirmed: false }, class_name: 'Friendship', foreign_key: 'friend_id'
  accepts_nested_attributes_for :profile

  def friends
    first_relation = Friendship.where(user_id: id, confirmed: true).pluck(:friend_id)
    second_relation = Friendship.where(friend_id: id, confirmed: true).pluck(:user_id)
    friends_list = first_relation + second_relation
    User.where(id: friends_list)
  end

  def gotten_friend_requests
    relation = Friendship.where(friend_id: id, confirmed: false).pluck(:id)
    Friendship.where(id: relation)
  end

  def sent_friend_requests
    relation = Friendship.where(user_id: id, confirmed: false).pluck(:id)
    Friendship.where(id: relation)
  end

  def friend_with?(other_user)
    Friendship.confirmed_record?(id, other_user.id)
  end

  def send_request(user, other_user)
    Friendship.create(user: user, friend_id: other_user.id)
  end
  
  def sent_request?(id1, id2)
    Friendship.requested?(id1, id2)
  end
end

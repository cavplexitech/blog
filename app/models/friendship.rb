class Friendship < ApplicationRecord
  belongs_to :user

  def self.requested?(id1, id2)
    case1 = !Friendship.where(user_id: id1, friend_id: id2).empty?
    case2 = !Friendship.where(user_id: id2, friend_id: id1).empty?
    case1 || case2
  end

  def self.confirmed_record?(id1, id2)
    case1 = !Friendship.where(user_id: id1, friend_id: id2, confirmed: true).empty?
    case2 = !Friendship.where(user_id: id2, friend_id: id1, confirmed: true).empty?
    case1 || case2
  end
  
  def self.find_friendship(id1, id2)
    if Friendship.where(user_id: id1, friend_id: id2).empty?
      if Friendship.where(user_id: id2, friend_id: id1).empty?
      end
      Friendship.where(user_id: id2, friend_id: id1)
    end
    Friendship.where(user_id: id1, friend_id: id2)
  end 
end


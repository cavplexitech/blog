class Article < ApplicationRecord

  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, dependent: :destroy 
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  # solr search
  searchable do
    text :title, :body
    text :comments do
      comments.map { |comment| comment.body }
    end
    boolean :featured
  end

  def liked?(user)
    !!self.likes.find{ |like| like.user.id == user.id}
  end
end

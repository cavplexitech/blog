class Article < ApplicationRecord
  has_paper_trail
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  # solr search
  searchable do
    text :title, :author, :body
    join(:body, prefix: "comment", target: Comment, type: :text, join: { from: :article_id, to: :id }, as: :comment_body)
    # text :commentable do # I think this needs to be :commentable
    #  comments.map { |comment| comment.body }
   # end
    boolean :featured
    date :created_at
    integer :id
  end

  def liked?(user)
    !!likes.find { |like| like.user.id == user.id }
  end
end

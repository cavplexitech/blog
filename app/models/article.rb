class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  # solr search
  searchable do
    text :title, :body
    text :comments do
      comments.map { |comment| comment.body }
    end
  end
end

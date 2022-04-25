class Comment < ApplicationRecord
  has_ancestry
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  searchable do
    text :body
    integer :article_id
    integer :id
  end
end

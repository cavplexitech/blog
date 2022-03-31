class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true

  has_one_attached :avatar
  
#  # solr search
#  searchable do
#    text :first_name
#    # text :body
#    # text :comments do
#    #   comments.map { |comment| comment.body.try(:comment) }
#    # end
#  end
end


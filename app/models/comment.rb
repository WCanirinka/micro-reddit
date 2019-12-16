class Comment < ApplicationRecord
  belongs_to :posts
  belongs_to :user
  validates :comments, presence: true, length: { maximum: 255 }
end

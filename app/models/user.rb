class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, presence: true, length: { maximum: 15 }, uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { maximum: 255 }
end

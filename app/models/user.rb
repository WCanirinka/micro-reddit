class User < ApplicationRecord
  has_many :post
  has_many :comment
  validates :name, presence: true, length: { maximum: 15 }, uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { maximum: 255 }
end

class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, uniqueness: true, presence: true
  validates :email, presence: true, uniqueness: true
end

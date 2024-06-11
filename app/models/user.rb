class User < ApplicationRecord
  has_many :posts

  validates :username, uniqueness: true, presence: true
  validates :email, presence: true, uniqueness: true
end

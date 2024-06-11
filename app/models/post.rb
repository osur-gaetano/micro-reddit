class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: {minimum:8,
              too_short: "%{count} characters is too short for a title of your post"}
  validates :body, presence: true, length: {
    minimum: 4, too_short: "No way that short statement is going to your wall !"
  }


end

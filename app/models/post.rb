class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :body, presence: true, length: { minimum: 3, maximum: 1000 }
  validates :title, presence: true, length: { minimum: 3, maximum: 100 }
end

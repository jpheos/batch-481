class Comment < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :content, length: { minimum: 2 }
end

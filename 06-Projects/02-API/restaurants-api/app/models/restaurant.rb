class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :name, length: { minimum: 10 }
end

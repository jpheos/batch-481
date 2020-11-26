class Book < ApplicationRecord
  belongs_to :author

  validates :title, presence: true
  validates :title, uniqueness: { scope: :author }
end

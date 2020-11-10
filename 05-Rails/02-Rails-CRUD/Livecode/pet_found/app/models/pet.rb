class Pet < ApplicationRecord
  SPECIES = %w(dog cat rabbit snake turtle squirrel)

  validates :name, presence: true

  validates :species, inclusion: { in: SPECIES }
end

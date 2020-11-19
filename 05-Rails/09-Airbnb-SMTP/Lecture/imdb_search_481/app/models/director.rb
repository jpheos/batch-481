class Director < ApplicationRecord
  has_many :movies

  def name
    "#{first_name} #{last_name}"
  end
end

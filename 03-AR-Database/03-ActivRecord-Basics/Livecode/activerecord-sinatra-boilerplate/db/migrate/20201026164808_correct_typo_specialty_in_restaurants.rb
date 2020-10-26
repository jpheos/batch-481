class CorrectTypoSpecialtyInRestaurants < ActiveRecord::Migration[5.1]
  def change
    rename_column :restaurants, :speciality, :specialty
  end
end

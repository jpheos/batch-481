class ChangeRatingsToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :average_rating, :float
  end
end

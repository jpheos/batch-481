class CreateRestaurants < ActiveRecord::Migration[5.1]

  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.string :speciality
      t.integer :number_of_ratings, default: 0
      t.integer :average_rating, default: 0

      t.timestamps
    end
  end

end

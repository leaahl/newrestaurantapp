class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :location
      t.string :cuisine

      t.timestamps
    end
  end
end

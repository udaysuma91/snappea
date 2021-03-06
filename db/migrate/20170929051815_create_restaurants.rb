class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.float :rating
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end

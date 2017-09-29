class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :category_id
      t.integer :restaurant_id
      t.text :description

      t.timestamps
    end
  end
end

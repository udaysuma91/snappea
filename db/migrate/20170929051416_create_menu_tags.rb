class CreateMenuTags < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_tags do |t|
      t.string :name
      t.integer :menu_id

      t.timestamps
    end
  end
end

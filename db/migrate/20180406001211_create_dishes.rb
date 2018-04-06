class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.integer :venue_id
      t.integer :cusine_id

      t.timestamps

    end
  end
end

class AddBookmarkedDishCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bookmarked_dishes_count, :integer
  end
end

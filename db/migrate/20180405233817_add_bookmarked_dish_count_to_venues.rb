class AddBookmarkedDishCountToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :bookmarked_dishes_count, :integer
  end
end

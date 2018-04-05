class AddAccumulatedBookmarkCountToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :accumulated_bookmarks_count, :integer
  end
end

class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :specific_dish,
             :class_name => "Dish",
             :foreign_key => "dish_id",
             :counter_cache => :accumulated_bookmarks_count

  belongs_to :user,
             :counter_cache => :bookmarked_dishes_count

  # Indirect associations

  # Validations

end

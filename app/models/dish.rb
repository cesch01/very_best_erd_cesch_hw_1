class Dish < ApplicationRecord
  # Direct associations

  has_many   :accumulated_bookmarks,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  # Validations

end

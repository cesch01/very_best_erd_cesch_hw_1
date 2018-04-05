class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cusine,
             :class_name => "CuisineType"

  belongs_to :venue,
             :required => false,
             :counter_cache => true

  has_many   :accumulated_bookmarks,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  has_many   :lovers_of_dish,
             :through => :accumulated_bookmarks,
             :source => :user

  # Validations

end

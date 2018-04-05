class Venue < ApplicationRecord
  # Direct associations

  has_many   :bookmarked_dishes,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  # Validations

end

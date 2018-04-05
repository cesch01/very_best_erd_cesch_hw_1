class Venue < ApplicationRecord
  # Direct associations

  belongs_to :address,
             :class_name => "VenueAddress"

  has_many   :bookmarked_dishes,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  # Validations

end

class Venue < ApplicationRecord
  # Direct associations

  belongs_to :address,
             :class_name => "VenueAddress"

  has_many   :dishes,
             :dependent => :nullify

  has_many   :bookmarked_dishes,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  has_many   :satisfied_customers,
             :through => :bookmarked_dishes,
             :source => :user

  # Validations

end

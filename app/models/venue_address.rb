class VenueAddress < ApplicationRecord
  # Direct associations

  has_one    :venue,
             :foreign_key => "address_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end

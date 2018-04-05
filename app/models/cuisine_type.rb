class CuisineType < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :foreign_key => "cusine_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end

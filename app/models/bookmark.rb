class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => :bookmarked_dishes_count

  # Indirect associations

  # Validations

end

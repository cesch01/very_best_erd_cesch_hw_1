class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarked_dishes,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  has_many   :venues_with_bookmarked_items,
             :through => :bookmarked_dishes,
             :source => :venue

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

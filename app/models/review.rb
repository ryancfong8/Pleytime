class Review < ApplicationRecord
  validates :headline, :body, :restaurant, :user, :rating, presence: true

  belongs_to :restaurant
  belongs_to :user
  has_many :photos
end

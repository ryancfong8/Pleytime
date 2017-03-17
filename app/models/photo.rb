class Photo < ApplicationRecord
  validates :restaurant_id, :user_id, :url, presence: true
  belongs_to :restaurant
end

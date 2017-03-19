class Restaurant < ApplicationRecord
  validates :name, :description, :address, :price, :lat, :long, :image_url, :city_params, :phone, presence: true
  has_many :photos
  has_many :reviews
end

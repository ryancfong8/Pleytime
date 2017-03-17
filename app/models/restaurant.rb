class Restaurant < ApplicationRecord
  validates :name, :description, :address, :hours, :price, :lat, :long, :image_url, :city_params, :phone, presence: true
end

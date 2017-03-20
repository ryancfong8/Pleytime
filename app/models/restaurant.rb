class Restaurant < ApplicationRecord
  validates :name, :description, :address, :price, :lat, :long, :city_params, :phone, presence: true
  has_many :photos
  has_many :reviews

  def averageRating
    reviews = self.reviews
    total = 0
    reviews.each do |review|
      total += review.rating
    end

    if self.reviews.length > 0
      average = (total/self.reviews.length).ceil
    else
      0
    end
  end

  def numReviews
    self.reviews.length
  end

end

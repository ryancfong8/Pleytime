json.extract! @restaurant, :id, :name, :description, :address, :mon, :tue, :wed, :thur, :fri, :sat, :sun, :price, :lat, :long, :city_params, :phone, :photos, :reviews

json.reviews @restaurant.reviews do |review|
  json.id review.id
  json.created_at review.created_at.strftime("%m/%d/%Y")
  json.rating review.rating
  json.body review.body
  json.headline review.headline
  json.user do
    json.extract! review.user, :username
  end
end

json.averageRating @restaurant.averageRating
json.numReviews @restaurant.numReviews

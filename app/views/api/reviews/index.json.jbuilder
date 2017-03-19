@reviews.each do |review|
  json.set! review.id do
    json.extract! review, :user_id, :restaurant_id, :user, :restaurant, :headline, :body, :rating
  end
end

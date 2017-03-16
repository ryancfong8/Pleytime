@restaurants.each do |restaurant|
  json.set! restaurant.id do
    json.extract! restaurant, :id, :name, :description, :address, :price, :hours, :image_url
  end
end

@restaurants.each do |restaurant|
  json.set! restaurant.id do
    json.extract! restaurant, :id, :name, :description, :address, :price, :hours, :image_url, :city_params, :phone, :photos 
  end
end

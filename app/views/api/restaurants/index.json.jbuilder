@restaurants.each do |restaurant|
  json.set! restaurant.id do
    json.extract! restaurant, :id, :name, :description, :address, :price, :city_params, :phone, :photos 
  end
end

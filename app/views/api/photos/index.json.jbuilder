json.photos @photos do |photo|
  json.id photo.id
  json.url photo.url
  json.restaurant_id photo.restaurant_id
  json.user_id photo.user_id
end

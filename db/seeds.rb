# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

guestUser = User.create({username: 'Guest User', password: "password"})

restaurants = Restaurant.create([{
  name: "Rooster & Rice",
  description: "Thai Restaurant specializing in Hainan-style chicken",
  address: "303 2nd St, San Francisco, CA 94118",
  price: "$$",
  hours: "M-F 11am-3pm",
  lat: 37.785233,
  long: -122.395693,
  image_url: "http://www.tablehopper.com/chatterbox/assets_c/2015/10/rooster_and_rice_yelp-thumb-300xauto-10500.jpg"
},{
  name: "Burma Superstar",
  description: "Burmese Restaurant specializing in authentic Burmese dishes.",
  address: "309 Clement St, San Francisco, CA 94118",
  price: "$$",
  hours: "Sun-Th 11:30am-3pm, 5pm-9:30pm, F-Sat 11:30am-3pm, 5pm-10pm",
  lat: 37.78282831,
  long: -122.462555,
  image_url: "https://s-media-cache-ak0.pinimg.com/originals/16/6e/cb/166ecbe0065ce48514011183449acad7.jpg"
  }, {
    name: "San Tung",
    description: "Chinese Restaurant specializing in chinese-style fried chicken.",
    address: "1031 Irving St, San Francisco, 94122",
    price: "$$",
    hours: "M-Tue 11am-3pm, 5pm-930pm, Thur-Sun 11am-3pm, 5pm-930pm",
    lat: 37.763696,
    long: -122.469001,
    image_url: "http://www.tablehopper.com/newsletter/080415/santung_large.jpg"
    }, {
      name: "Tpumps",
      description: "Boba Tea Cafe specializing in different flavors of tea and toppings.",
      address: "1916 Irving St, San Francisco, CA 94122",
      price: "$",
      hours: "Sun-Thur 11am-945pm, F-Sat 11am-1045pm",
      lat: 37.7636726,
      long: -122.478623,
      image_url: "https://s3-media1.fl.yelpcdn.com/bphoto/W_G-kopoOMR03HiwKp9CZw/180s.jpg"
    }, {
      name: "HRD",
      description: "Korean Mexican fusion restaurant specializing in korean style burritos and rice plates.",
      address: "521A 3rd St, San Francisco, CA 94107",
      price: "$",
      hours: "M-Sat 10am-4pm",
      lat: 37.781202,
      long: -122.395225,
      image_url: "https://c1.staticflickr.com/9/8672/15789503732_921016bdf0_b.jpg"
      }]);

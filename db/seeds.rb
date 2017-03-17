# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ryan = User.create({username: 'Ryan', password: "password"})

guestUser = User.create({username: 'Guest User', password: "password"})

restaurants = Restaurant.create([{
  name: "Rooster & Rice",
  description: "Thai Restaurant specializing in Hainan-style chicken.",
  address: "303 2nd St",
  price: "$$",
  hours: "M-F 11am-3pm",
  lat: 37.785233,
  long: -122.395693,
  image_url: "http://www.tablehopper.com/chatterbox/assets_c/2015/10/rooster_and_rice_yelp-thumb-300xauto-10500.jpg",
  city_params: "San Francisco, CA 94107",
  phone: "(415) 896-2000"
},{
  name: "Burma Superstar",
  description: "Burmese Restaurant specializing in authentic Burmese dishes.",
  address: "309 Clement St",
  price: "$$",
  hours: "Sun-Th 11:30am-3pm, 5pm-9:30pm, F-Sat 11:30am-3pm, 5pm-10pm",
  lat: 37.78282831,
  long: -122.462555,
  image_url: "https://s-media-cache-ak0.pinimg.com/originals/16/6e/cb/166ecbe0065ce48514011183449acad7.jpg",
  city_params: "San Francisco, CA 94118",
  phone: "(415) 387-2147"
  }, {
    name: "San Tung",
    description: "Chinese Restaurant specializing in chinese-style fried chicken.",
    address: "1031 Irving St",
    price: "$$",
    hours: "M-Tue 11am-3pm, 5pm-930pm, Thur-Sun 11am-3pm, 5pm-930pm",
    lat: 37.763696,
    long: -122.469001,
    image_url: "http://www.tablehopper.com/newsletter/080415/santung_large.jpg",
    city_params: "San Francisco, CA 94122",
    phone: "(415) 242-0828"
    }, {
      name: "Tpumps",
      description: "Boba Tea Cafe specializing in different flavors of tea and toppings.",
      address: "1916 Irving St",
      price: "$",
      hours: "Sun-Thur 11am-945pm, F-Sat 11am-1045pm",
      lat: 37.7636726,
      long: -122.478623,
      image_url: "https://s3-media1.fl.yelpcdn.com/bphoto/W_G-kopoOMR03HiwKp9CZw/180s.jpg",
      city_params:"San Francisco, CA 94122",
      phone: "(510) 398-8499"
    }, {
      name: "HRD",
      description: "Korean Mexican fusion restaurant specializing in korean style burritos and rice plates.",
      address: "521A 3rd St",
      price: "$",
      hours: "M-Sat 10am-4pm",
      lat: 37.781202,
      long: -122.395225,
      image_url: "https://c1.staticflickr.com/9/8672/15789503732_921016bdf0_b.jpg",
      city_params: "San Francisco, CA 94107",
      phone: "(415) 543-2355"
      }]);


photos = Photo.create([{
  restaurant_id:1,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489774231/51129879_AUf41esvUqGNzyLvRSXnqdYJwnWFsEQW4Y23S7CbZRc_gkkth9.jpg"
  }, {
  restaurant_id:1,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489774265/180s_n4avoo.jpg"
  }, {
  restaurant_id:1,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489774860/1_xxngrh.jpg"
  }, {
  restaurant_id:1,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489774885/348s_nfend1.jpg"
  }, {
  restaurant_id:2,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489774953/burma_ewywvv.jpg"
  }, {
  restaurant_id:2,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775026/IMG_2007_c1hog1.jpg"
  }, {
  restaurant_id:2,
  user_id:1,
  url:"https://res.cloudinary.com/ryancfong8/image/upload/t_media_lib_thumb/v1489775051/dsc02408_aw1d6h.jpg"
  }, {
  restaurant_id:2,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775079/carousel-pic1_yq0vpy.jpg"
  }, {
  restaurant_id:3,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775109/San-Tung-Dry-Fried-Chicken-Wings-1_s9hzws.jpg"
  }, {
  restaurant_id:3,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775133/348s_jckdvm.jpg"
  }, {
  restaurant_id:3,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775152/thumb_600_gxufgp.jpg"
  }, {
  restaurant_id:3,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775187/SanTung_Thumb.0_raqe88.webp"
  }, {
  restaurant_id:4,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775217/5990498_d3sjvw.jpg"
  }, {
  restaurant_id:4,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775233/image_mmmivv.jpg"
  }, {
  restaurant_id:4,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775267/5555295_icd0y1.png"
  }, {
  restaurant_id:4,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775289/5413462_zvoc7q.jpg"
  }, {
  restaurant_id:5,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775321/2000_gatzxt.jpg"
  }, {
  restaurant_id:5,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775338/hrd1-630x310_bx4duv.jpg"
  }, {
  restaurant_id:5,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775382/348s_b5qdov.jpg"
  }, {
  restaurant_id:5,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775403/food.hrdcoffee0907_xzyzu6.jpg"
  }])

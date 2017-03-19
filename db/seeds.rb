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
  lat: 37.785233,
  long: -122.395693,
  image_url: "http://www.tablehopper.com/chatterbox/assets_c/2015/10/rooster_and_rice_yelp-thumb-300xauto-10500.jpg",
  city_params: "San Francisco, CA 94107",
  phone: "(415) 896-2000",
  mon: "11:00am - 3:00pm",
  tue: "11:00am - 3:00pm",
  wed: "11:00am - 3:00pm",
  thur: "11:00am - 3:00pm",
  fri: "11:00am - 3:00pm",
  sat: "Closed",
  sun: "Closed"
},{
  name: "Burma Superstar",
  description: "Burmese Restaurant specializing in authentic Burmese dishes.",
  address: "309 Clement St",
  price: "$$",
  lat: 37.78282831,
  long: -122.462555,
  image_url: "https://s-media-cache-ak0.pinimg.com/originals/16/6e/cb/166ecbe0065ce48514011183449acad7.jpg",
  city_params: "San Francisco, CA 94118",
  phone: "(415) 387-2147",
  mon: "11:30am - 3:00pm, 5:00pm - 9:30pm",
  tue: "11:30am - 3:00pm, 5:00pm - 9:30pm",
  wed: "11:30am - 3:00pm, 5:00pm - 9:30pm",
  thur: "11:30am - 3:00pm, 5:00pm - 9:30pm",
  fri: "11:30am - 3:00pm, 5:00pm - 10:00pm",
  sat: "11:30am - 3:00pm, 5:00pm - 10:00pm",
  sun: "11:30am - 3:00pm, 5:00pm - 9:30pm"
  }, {
    name: "San Tung",
    description: "Chinese Restaurant specializing in chinese-style fried chicken.",
    address: "1031 Irving St",
    price: "$$",
    lat: 37.763696,
    long: -122.469001,
    image_url: "http://www.tablehopper.com/newsletter/080415/santung_large.jpg",
    city_params: "San Francisco, CA 94122",
    phone: "(415) 242-0828",
      mon: "11:00am - 3:00pm, 5:00pm - 9:30pm",
      tue: "11:00am - 3:00pm, 5:00pm - 9:30pm",
      wed: "Closed",
      thur: "11:00am - 3:00pm, 5:00pm - 9:30pm",
      fri: "11:00am - 3:00pm, 5:00pm - 9:30pm",
      sat: "11:00am - 3:00pm, 5:00pm - 9:30pm",
      sun: "11:00am - 3:00pm, 5:00pm - 9:30pm"
    }, {
      name: "Tpumps",
      description: "Boba Tea Cafe specializing in different flavors of tea and toppings.",
      address: "1916 Irving St",
      price: "$",
      lat: 37.7636726,
      long: -122.478623,
      image_url: "https://s3-media1.fl.yelpcdn.com/bphoto/W_G-kopoOMR03HiwKp9CZw/180s.jpg",
      city_params:"San Francisco, CA 94122",
      phone: "(510) 398-8499",
      mon: "11:00am - 9:45pm",
      tue: "11:00am - 9:45pm",
      wed: "11:00am - 9:45pm",
      thur: "11:00am - 9:45pm",
      fri: "11:00am - 10:45pm",
      sat: "11:00am - 10:45pm",
      sun: "11:00am - 9:45pm"
    }, {
      name: "HRD",
      description: "Korean Mexican fusion restaurant specializing in korean style burritos and rice plates.",
      address: "521A 3rd St",
      price: "$",
      lat: 37.781202,
      long: -122.395225,
      image_url: "https://c1.staticflickr.com/9/8672/15789503732_921016bdf0_b.jpg",
      city_params: "San Francisco, CA 94107",
      phone: "(415) 543-2355",
      mon: "10:00am - 4:00pm",
      tue: "10:00am - 4:00pm",
      wed: "10:00am - 4:00pm",
      thur: "10:00am - 4:00pm",
      fri: "10:00am - 4:00pm",
      sat: "10:00am - 4:00pm",
      sun: "Closed"
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

  reviews = Review.create([{
    headline: "Rooster and Rice is Great!",
    body: "The chicken is very flavorful and the sauce is a must",
    rating: 5,
    restaurant_id: 1,
    user_id: 2,
    }, {
    headline: "It was just ok",
    body: "The chicken is not anything special",
    rating: 3,
    restaurant_id: 1,
    user_id: 1,
    },
    {
    headline: "Great tasting chicken!",
    body: "Chicken was great, but I wish there was more options",
    rating: 4,
    restaurant_id: 1,
    user_id: 2,
    },
    {
    headline: "Lives Up to the Hype",
    body: "Burma Superstar is awesome",
    rating: 5,
    restaurant_id: 2,
    user_id: 2,
    },{
    headline: "Mhmmm, Tasty!",
    body: "San Tung has the best chicken wings!",
    rating: 5,
    restaurant_id: 3,
    user_id:4,
    },
    {
    headline: "Best Boba in California",
    body: "Tpumps has many options and you can choose up to 3 flavors to mix in your drink.  I would come on Tuesdays for the free upgrade to Pumpbo",
    rating: 5,
    restaurant_id: 4,
    user_id: 1,
    },
    {
    headline: "Wait is Too Long",
    body: "We didn't want to wait so we left",
    rating: 1,
    restaurant_id: 4,
    user_id: 2,
    },
    {
    headline: "HRD Rocks!",
    body: "Unique food flavor and combination!",
    rating: 5,
    restaurant_id: 5,
    user_id: 2,
    }])

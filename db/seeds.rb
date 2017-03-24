# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ryan = User.create({username: 'Ryan', password: "password"})

guestUser = User.create({username: 'Guest User', password: "password"})
bob = User.create({username: 'Bob', password: "password"})
jacob = User.create({username: 'Jacob', password: "password"})
stevieD = User.create({username: 'Stevie D', password: "password"})
john = User.create({username: 'John', password: "password"})

restaurants = Restaurant.create([{
  name: "Rooster & Rice",
  description: "Thai Restaurant specializing in Hainan-style chicken.",
  address: "303 2nd St",
  price: "$$",
  lat: 37.785233,
  long: -122.395693,
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
      city_params: "San Francisco, CA 94107",
      phone: "(415) 543-2355",
      mon: "10:00am - 4:00pm",
      tue: "10:00am - 4:00pm",
      wed: "10:00am - 4:00pm",
      thur: "10:00am - 4:00pm",
      fri: "10:00am - 4:00pm",
      sat: "10:00am - 4:00pm",
      sun: "Closed"
      },
      {
      name: "Tasty Pot",
      description: "Taiwanese restaurant specializing in boiling hot pot soups.",
      address: "815 Clement St",
      price: "$$",
      lat: 37.782578,
      long: -122.4680006,
      city_params: "San Francisco, CA 94118",
      phone: "(415) 666-3888",
      mon: "11:30am - 3:00pm, 5:00pm - 10:00pm",
      tue: "11:30am - 3:00pm, 5:00pm - 10:00pm",
      wed: "11:30am - 3:00pm, 5:00pm - 10:00pm",
      thur: "11:30am - 3:00pm, 5:00pm - 10:00pm",
      fri: "11:30am - 3:00pm, 5:00pm - 10:00pm",
      sat: "11:30am - 11:00pm",
      sun: "11:30am - 10:00pm"
      },
      {
      name: "The Stinking Rose",
      description: "An Italian and Seafood restaurant that puts a unique garlic twist on each dish.",
      address: "325 Columbus Ave",
      price: "$$",
      lat: 37.798125,
      long: -122.407543,
      city_params: "San Francisco, CA 94133",
      phone: "(415) 781-7673",
      mon:"11:30am - 10:00pm",
      tue:"11:30am - 10:00pm",
      wed:"11:30am - 10:00pm",
      thur:"11:30am - 10:00pm",
      fri:"11:30am - 10:00pm",
      sat:"11:30am - 10:00pm",
      sun:"11:30am - 10:00pm"
    },
      {
      name: "Udon Mugizo",
      description: "A Japanese restaurant specializing in various types of udon dishes.",
      address: "1581 Webster St",
      price: "$$",
      lat: 37.785046,
      long: -122.432093,
      city_params: "San Francisco, CA 94115",
      phone: "(415) 931-3118",
      mon: "11:30am - 3:00pm, 5:30pm - 9:30pm",
      tue: "11:30am - 3:00pm, 5:30pm - 9:30pm",
      wed:"11:30am - 3:00pm, 5:30pm - 9:30pm",
      thur:"11:30am - 3:00pm, 5:30pm - 9:30pm",
      fri:"11:30am - 3:00pm, 5:30pm - 9:30pm",
      sat:"11:30am - 3:00pm, 5:00pm - 9:30pm",
      sun:"11:30am - 3:00pm, 5:00pm - 9:00pm",
    },
      {
      name: "Mr Holmes Bakehouse",
      description: "A bakery that is famous for their most sold out item: cruffins",
      address: "1042 Larkin St",
      price: "$$",
      lat: 37.787752,
      long: -122.418188,
      city_params: "San Francisco, CA 94109",
      phone: "(415) 829-7700",
      mon: "7:00am - 2:30pm",
      tue:"7:00am - 2:30pm",
      wed:"7:00am - 2:30pm",
      thur:"7:00am - 2:30pm",
      fri:"7:00am - 2:30pm",
      sat:"8:00am - 3:30pm",
      sun:"8:00am - 3:30pm"
    },
      {
      name: "Sushirrito",
      description: "A Japanese restaurant that specializes in making burritos out of sushi.",
      address: "59 New Montgomery St",
      price: "$$",
      lat: 37.788139,
      long: -122.401021,
      city_params: "San Francisco, CA 94105",
      phone:"(415) 495-7655",
      mon: "11:00am - 4:00pm",
      tue: "11:00am - 4:00pm",
      wed:"11:00am - 4:00pm",
      thur:"11:00am - 4:00pm",
      fri:"11:00am - 4:00pm",
      sat: "Closed",
      sun: "Closed"
    },
      {
      name: "House of Prime Rib",
      description: "A steakhouse restaurant famous for their prime rib. Reservations are always recommended.",
      address: "1906 Van Ness Ave",
      price: "$$$",
      lat: 37.793452,
      long: -122.422543,
      city_params: "San Francisco, CA 94109",
      phone: "(415) 885-4605",
      mon: "5:30pm - 10:00pm",
      tue: "5:30pm - 10:00pm",
      wed:"5:30pm - 10:00pm",
      thur:"5:30pm - 10:00pm",
      fri:"5:00pm - 10:00pm",
      sat:"4:00pm - 10:00pm",
      sun:"4:00pm - 10:00pm"
      },
      {
      name: "The Halal Guys",
      description: "A Halal, Middle Eastern and Mediterranean restaurant known for their chicken and rice.",
      address: "340 O'Farrell St",
      price:"$$",
      lat: 37.786284,
      long: -122.410506,
      city_params:"San Francisco, CA 94102",
      phone:"(415) 549-3454",
      mon:"10:00am - 2:00am",
      tue:"10:00am - 2:00am",
      wed:"10:00am - 2:00am",
      thur:"10:00am - 4:00am",
      fri:"10:00am - 4:00am",
      sat:"10:00am - 4:00am",
      sun:"10:00am - 2:00am"
      },
      {
      name: "Perilla",
      description: "A Vietnamese restaurant specializing in garlic noodles and five spiced chicken.",
      address: "836 Irving St",
      price: "$$",
      lat: 37.764229,
      long: -122.467162,
      city_params:"San Francisco, CA 94122",
      phone: "(415) 564-9980",
      mon: "11:00am - 9:00pm",
      tue: "11:00am - 9:00pm",
      wed:"11:00am - 9:00pm",
      thur:"11:00am - 9:00pm",
      fri:"11:00am - 9:00pm",
      sat:"11:00am - 9:00pm",
      sun:"11:00am - 9:00pm"
      },
      {
      name: "Belly Good Cafe & Crepes",
      description: "An ice cream and frozen yogurt place that is famous for serving crepes with cute looking faces on them.",
      address: "1737 Post St Ste 393",
      price: "$",
      lat: 37.785297,
      long: -122.430673,
      city_params: "San Francisco, CA 94115",
      phone: "(415) 346-8383",
      mon:"11:30am - 8:00pm",
      tue:"11:30am - 8:00pm",
      wed:"11:30am - 8:00pm",
      thur:"11:30am - 8:00pm",
      fri:"11:30am - 9:00pm",
      sat:"11:30am - 9:00pm",
      sun:"11:30am - 8:00pm"
      },
      {
      name: "Tacorea",
      description: "A Mexican, Korean, and Latin American restaurant specializing in tacos, burritos, and tater tot nachos.",
      address: "809 Bush St",
      price: "$",
      lat: 37.789745,
      long: -122.410579,
      city_params: "San Francisco, CA 94108",
      phone: "(415) 885-1325",
      mon: "11:30am - 3:00pm, 6:00pm - 9:00pm",
      tue: "11:30am - 3:00pm, 6:00pm - 9:00pm",
      wed: "11:30am - 3:00pm, 6:00pm - 9:00pm",
      thur: "11:30am - 3:00pm, 6:00pm - 9:00pm",
      fri: "11:30am - 3:00pm, 6:00pm - 9:00pm",
      sat: "11:30am - 3:00pm, 6:00pm - 9:00pm",
      sun: "11:30am - 3:00pm, 6:00pm - 9:00pm"
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
  }, {
  restaurant_id:6,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489977015/348s_q2gygr.jpg"
  }, {
  restaurant_id: 7,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977219/stinking_nrzzak.jpg"
  }, {
  restaurant_id: 8,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489977311/348s_vmlzu4.jpg"
  }, {
  restaurant_id: 9,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489977370/IMG_0407.0_tbdov8.jpg"
  }, {
  restaurant_id: 10,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489977418/home_catering-481531e1a702912a078c352cea2daeca_megaub.jpg"
  }, {
  restaurant_id: 11,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977502/ls_dalkxe.jpg"
  }, {
  restaurant_id: 12,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489977578/The-Halal-Guys-for-Caviar-SF_mr053q.jpg"
  }, {
  restaurant_id:13,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977629/Perilla-7_svb73f.jpg"
  }, {
  restaurant_id:14,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977697/348s_hn45jc.jpg"
  }, {
  restaurant_id:15,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977770/348s_wivygr.jpg"
  }])

  reviews = Review.create([{
    headline: "Rooster and Rice is Great!",
    body: "The chicken is very flavorful and the sauce is a must",
    rating: 5,
    restaurant_id: 1,
    user_id: 2
    }, {
    headline: "It was just ok",
    body: "The chicken is not anything special",
    rating: 3,
    restaurant_id: 1,
    user_id: 1
    },
    {
    headline: "Great tasting chicken!",
    body: "Chicken was great, but I wish there was more options",
    rating: 4,
    restaurant_id: 1,
    user_id: 3
    },
    {
    headline: "Lives Up to the Hype",
    body: "Burma Superstar is awesome",
    rating: 5,
    restaurant_id: 2,
    user_id: 4
    }, {
    headline: "Mhmmm Tasty!",
    body: "San Tung has the best chicken wings!",
    rating: 5,
    restaurant_id: 3,
    user_id:5
    },
    {
    headline: "Best Boba in California",
    body: "Tpumps has many options and you can choose up to 3 flavors to mix in your drink.  I would come on Tuesdays for the free upgrade to Pumpbo",
    rating: 5,
    restaurant_id: 4,
    user_id: 6
    },
    {
    headline: "Wait is Too Long",
    body: "We didn't want to wait so we left",
    rating: 1,
    restaurant_id: 4,
    user_id: 2
    },
    {
    headline: "HRD Rocks!",
    body: "Unique food flavor and combination!",
    rating: 5,
    restaurant_id: 5,
    user_id: 2
    }])

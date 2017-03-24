# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ryan = User.create({username: 'Ryan F', password: "password"})

guestUser = User.create({username: 'Guest User', password: "password"})
david = User.create({username: 'David M', password: "password"})
jacob = User.create({username: 'Jacob G', password: "password"})
stevieD = User.create({username: 'Stevie D', password: "password"})
john = User.create({username: 'John C', password: "password"})
kelsey = User.create({username: 'Kelsey W', password: "password"})
amy = User.create({username: 'Amy Y', password: "password"})
alexis = User.create({username: 'Alexis P', password: "password"})
stephanie = User.create({username: 'Stephanie L', password: "password"})

restaurants = Restaurant.create([
  {
  name: "Dragon Beaux",
  description: "A Chinese restaurant known for their dim sum and dumplings.",
  address: "5700 Geary Blvd",
  price:"$$",
  lat:37.780500,
  long:-122.480722,
  city_params:"San Francisco, CA 94121",
  phone:"(415) 333-8899",
  mon:"11:00am - 2:30pm, 5:30pm - 10:00pm",
  tue: "11:00am - 2:30pm, 5:30pm - 10:00pm",
  wed:"11:00am - 2:30pm, 5:30pm - 10:00pm",
  thur:"11:00am - 2:30pm, 5:30pm - 10:00pm",
  fri:"11:00am - 2:30pm, 5:30pm - 10:00pm",
  sat:"10:00am - 3:00pm, 5:30pm - 10:00pm",
  sun:"11:00am - 2:30pm, 5:30pm - 10:00pm"
  },
  {
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
    },
  {
  name: "Hog Island Oyster Co.",
  description: "Seafood Bar and Grill with Happy Hour",
  address: "1 Ferry Bldg",
  price:"$$",
  lat: 37.795570,
  long: -122.393321,
  city_params:"San Francisco, CA 94111",
  phone:"(415) 391-7117",
  mon:"11:00am - 9:00pm",
  tue: "11:00am - 9:00pm",
  wed:"11:00am - 9:00pm",
  thur:"11:00am - 9:00pm",
  fri:"11:00am - 9:00pm",
  sat:"11:00am - 9:00pm",
  sun:"11:00am - 9:00pm"
  },
  {
  name: "Boba Guys",
  description: "Boba Tea Cafe with unique flavors and toppings",
  address: "429 Stockton St",
  price:"$",
  lat: 37.790003,
  long:-122.407301,
  city_params:"San Francisco, CA 94108",
  phone:"Phone: None",
  mon:"Closed",
  tue: "8:00am - 9:00pm",
  wed:"8:00am - 9:00pm",
  thur:"8:00am - 9:00pm",
  fri:"8:00am - 9:00pm",
  sat:"8:00am - 9:00pm",
  sun:"8:00am - 9:00pm"
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
  name: "Brenda’s French Soul Food",
  description: "Breakfast and Brunch French Restaurant",
  address: "652 Polk St",
  price:"$$",
  lat:37.782912,
  long:-122.419015,
  city_params:"San Francisco, CA 94102",
  phone:"(415) 345-8100",
  mon:"8:00am - 3:00pm",
  tue: "8:00am - 3:00pm",
  wed:"8:00am - 10:00pm",
  thur:"8:00am - 10:00pm",
  fri:"8:00am - 10:00pm",
  sat:"8:00am - 10:00pm",
  sun:"8:00am - 8:00pm"
  },
  {
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
      name: "Mr. Holmes Bakehouse",
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
      },
    {
    name: "Turtle Tower",
    description: "Vietnamese Pho noodle soup restaurant.",
    address: "5716 Geary Blvd",
    price:"$",
    lat:37.780547,
    long:-122.480908,
    city_params:"San Francisco, CA 94121",
    phone:"(415) 221-9890",
    mon:"10:00am - 8:00pm",
    tue: "10:00am - 8:00pm",
    wed:"Closed",
    thur:"10:00am - 8:00pm",
    fri:"10:00am - 9:00pm",
    sat:"10:00am - 9:00pm",
    sun:"10:00am - 8:00pm"
    },
    {
    name: "Mensho Tokyo",
    description: "Japanese Cuisine Restaurant, specializing in ramen noodle soup.",
    address: "672 Geary St",
    price:"$$",
    lat:37.7786599,
    long:-122.414305,
    city_params:"San Francisco, CA 94102",
    phone:"(415) 800-8345",
    mon:"Closed",
    tue: "5:00pm - 11:30pm",
    wed:"5:00pm - 11:30pm",
    thur:"5:00pm - 11:30pm",
    fri:"5:00pm - 11:30pm",
    sat:"5:00pm - 11:30pm",
    sun:"5:00pm - 11:30pm"
    },
    {
    name: "Bi-Rite Creamery",
    description: "Ice cream parlor",
    address: "3692 18th St",
    price:"$",
    lat: 37.761623,
    long:-122.425742,
    city_params:"San Francisco, CA 94110",
    phone:"(415) 626-5600",
    mon:"11:00am - 10:00pm",
    tue: "11:00am - 10:00pm",
    wed:"11:00am - 10:00pm",
    thur:"11:00am - 10:00pm",
    fri:"11:00am - 10:00pm",
    sat:"11:00am - 10:00pm",
    sun:"11:00am - 10:00pm"
    },
    {
    name: "Crustacean Restaurant",
    description: "An Asian fusion/Vietnamese restaurant known for their crab, seafood, and garlic noodles.",
    address: "1475 Polk St Ste 6",
    price:"$$$",
    lat:37.790297,
    long:-122.420915,
    city_params:"San Francisco, CA 94109",
    phone:"(415) 776-2722",
    mon:"5:00pm - 9:00pm",
    tue: "5:00pm - 9:00pm",
    wed:"5:00pm - 9:00pm",
    thur:"5:00pm - 9:00pm",
    fri:"5:00 pm - 10:00 pm",
    sat:"5:00 pm - 10:00 pm",
    sun:"11:30am - 2:30pm, 5:00 pm - 9:00 pm"
    },
    {
    name: "The House",
    description: "Asian Fusion Seafood Restaurant",
    address: "1230 Grant Ave",
    price:"$$$",
    lat: 37.798470,
    long: -122.407051,
    city_params:"San Francisco, CA 94133",
    phone:"(415) 986-8612",
    mon:"11:30am - 3:00pm, 5:30pm - 10:00pm",
    tue: "11:30am - 3:00pm, 5:30pm - 10:00pm",
    wed:"11:30am - 3:00pm, 5:30pm - 10:00pm",
    thur:"11:30am - 3:00pm, 5:30pm - 10:00pm",
    fri:"11:30am - 3:00pm, 5:30pm - 10:00pm",
    sat:"11:30am - 3:00pm, 5:30pm - 10:00pm",
    sun:"11:30am - 3:00pm, 5:30pm - 10:00pm"
    },
    {
    name: "Aina",
    description: "Breakfast and Brunch, Hawaiian, Asian Fusion Restaurant",
    address: "900 22nd St",
    price:"$$",
    lat: 37.757939,
    long:-122.390416,
    city_params:"San Francisco, CA 94107",
    phone:"(415) 814-3815",
    mon:"Closed",
    tue: "5:30pm - 10:00pm",
    wed:"10:00am - 2:30pm, 5:30pm - 10:00pm",
    thur:"10:00am - 2:30pm, 5:30pm - 10:00pm",
    fri:"10:00am - 2:30pm, 5:30pm - 10:00pm",
    sat:"9:00am - 2:30pm, 5:30pm - 10:00pm",
    sun:"9:00am - 2:30pm"
    },
    {
    name: "Onigilly",
    description: "A Japanese fast food place specializing in rice balls with a savory filling wrapped in seaweed.",
    address: "4 Embarcadero Ctr",
    price:"$",
    lat: 37.795065,
    long: -122.396451,
    city_params:"San Francisco, CA 94111",
    phone:"(415) 956-2075",
    mon:"11:00am - 3:00pm",
    tue: "11:00am - 3:00pm",
    wed:"11:00am - 3:00pm",
    thur:"11:00am - 3:00pm",
    fri:"11:00am - 3:00pm",
    sat:"11:00am - 3:00pm",
    sun:"11:00am - 3:00pm"
    },
    {
    name: "The Chairman",
    description: "A Taiwanese place/food truck that is known for their various kinds of baos.",
    address: "670 Larkin St",
    price:"$",
    lat: 37.784069,
    long: -122.417594,
    city_params:"San Francisco, CA 94109",
    phone:"(415) 813-8800",
    mon:"11:30am - 9:00pm",
    tue: "11:30am - 9:00pm",
    wed:"11:30am - 9:00pm",
    thur:"11:30am - 9:00pm",
    fri:"11:30am - 9:00pm",
    sat:"11:30am - 9:00pm",
    sun:"11:30am - 7:00pm"
    },
    {
    name: "Kitchen Story",
    description: "Breakfast & Brunch, Asian Fusion, American Restaurant",
    address: "3499 16th St",
    price:"$$",
    lat: 37.764176,
    long: -122.430668,
    city_params:"San Francisco, CA 94114",
    phone:"(415) 525-4905",
    mon:"8:00am - 3:00pm, 5:00pm - 10:00pm",
    tue: "8:00am - 3:00pm, 5:00pm - 10:00pm",
    wed:"8:00am - 3:00pm, 5:00pm - 10:00pm",
    thur:"8:00am - 3:00pm, 5:00pm - 10:00pm",
    fri:"8:00am - 3:00pm, 5:00pm - 10:30pm",
    sat:"8:00am - 3:00pm, 5:00pm - 10:30pm",
    sun:"8:00am - 3:00pm, 5:00pm - 10:00pm"
    },
    {
    name: "Alexander’s Steakhouse",
    description: "High Class SteakHouse Restaurant",
    address: "448 Brannan St",
    price:"$$$$",
    lat: 37.779306,
    long: -122.395699,
    city_params:"San Francisco, CA 94107",
    phone:" (415) 495-1111",
    mon:"5:30pm - 9:00pm",
    tue: "5:30pm - 9:00pm",
    wed:"5:30pm - 9:00pm",
    thur:"5:30pm - 9:00pm",
    fri:"5:30pm - 10:00pm",
    sat:"5:30pm - 10:00pm",
    sun:"5:30pm - 9:00pm"
    },
    {
    name: "Lemonade",
    description: "American cafeteria style restaurant with sandwiches, salads, and a variety of juices and lemonades",
    address: "16 West Portal",
    price:"$$",
    lat: 37.740823,
    long: -122.466330,
    city_params:"San Francisco, CA 94127",
    phone:"(415) 329-5111",
    mon:"11:00am - 9:00pm",
    tue: "11:00am - 9:00pm",
    wed:"11:00am - 9:00pm",
    thur:"11:00am - 9:00pm",
    fri:"11:00am - 9:00pm",
    sat:"11:00am - 9:00pm",
    sun:"11:00am - 9:00pm"
    }]);


photos = Photo.create([{
  restaurant_id:7,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489774860/1_xxngrh.jpg"
  }, {
  restaurant_id:7,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489774885/348s_nfend1.jpg"
  }, {
  restaurant_id:2,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490379136/burma_superstar_tea_leaf_salad_anji_s_tvibjl.jpg"
  }, {
  restaurant_id:2,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490379199/JH48360-1024x681_y5oap4.jpg"
  }, {
  restaurant_id:2,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490379263/8353599081_8a33da3e73_k_y0cxus.jpg"
  }, {
  restaurant_id:8,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775109/San-Tung-Dry-Fried-Chicken-Wings-1_s9hzws.jpg"
  }, {
  restaurant_id:8,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775133/348s_jckdvm.jpg"
  }, {
  restaurant_id:8,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775152/thumb_600_gxufgp.jpg"
  }, {
  restaurant_id:8,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775187/SanTung_Thumb.0_raqe88.webp"
  }, {
  restaurant_id:9,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775217/5990498_d3sjvw.jpg"
  }, {
  restaurant_id:9,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775233/image_mmmivv.jpg"
  }, {
  restaurant_id:9,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775267/5555295_icd0y1.png"
  }, {
  restaurant_id:9,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775289/5413462_zvoc7q.jpg"
  }, {
  restaurant_id:10,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775321/2000_gatzxt.jpg"
  }, {
  restaurant_id:10,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775338/hrd1-630x310_bx4duv.jpg"
  }, {
  restaurant_id:10,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775382/348s_b5qdov.jpg"
  }, {
  restaurant_id:10,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489775403/food.hrdcoffee0907_xzyzu6.jpg"
  }, {
  restaurant_id:11,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489977015/348s_q2gygr.jpg"
  }, {
  restaurant_id: 12,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977219/stinking_nrzzak.jpg"
  }, {
  restaurant_id: 13,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489977311/348s_vmlzu4.jpg"
  }, {
  restaurant_id: 14,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489977370/IMG_0407.0_tbdov8.jpg"
  },  {
  restaurant_id: 15,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977502/ls_dalkxe.jpg"
  }, {
  restaurant_id: 16,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1489977578/The-Halal-Guys-for-Caviar-SF_mr053q.jpg"
  }, {
  restaurant_id:17,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977629/Perilla-7_svb73f.jpg"
  }, {
  restaurant_id:18,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977697/348s_hn45jc.jpg"
  }, {
  restaurant_id:19,
  user_id:1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977770/348s_wivygr.jpg"
  },
  {
    restaurant_id:20,
    user_id:1,
    url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490345720/348s_tdqiqf.jpg"
  },
  {
  restaurant_id:21,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490346123/mensho-tokyo-sf06_xvmum1.jpg"
  },
  {
  restaurant_id:22,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490346465/4531db19397690437eeddf5dcb176cc2_knrzxv.jpg"
  },
  {
  restaurant_id:23,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490346592/crustaceans_banner1_bbsbui.jpg"
  },
  {
  restaurant_id:24,
  user_id:1,
  url:"https://res.cloudinary.com/ryancfong8/image/upload/t_media_lib_thumb/v1490346817/house-exterior_x6ysuf.jpg"
  },
  {
  restaurant_id:25,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490346857/aina-1010595_vlyxpp.jpg"
  },
  {
  restaurant_id:26,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490346922/untitled-65_bec4lb.png"
  },
  {
  restaurant_id:27,
  user_id:1,
  url:"https://res.cloudinary.com/ryancfong8/image/upload/t_media_lib_thumb/v1490346994/9750fd26ed1afb702b3f3ae02de98e9a_y9otcf.jpg"
  },
  {
  restaurant_id:28,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490347083/thumb_600_ry5aww.jpg"
  },
  {
  restaurant_id:29,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490347238/Alexander_27s_20Steakhouse_20San_20Francisco_20Wedding_203_main_lm40m6.jpg"
  },
  {
  restaurant_id:30,
  user_id:1,
  url:"http://res.cloudinary.com/ryancfong8/image/upload/v1490347282/lemonade_aruwy7.jpg"
  },
  {
  restaurant_id: 1,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490378801/DragonBeaux-dibanh2_wbliae.jpg"
  },
  {
  restaurant_id:1 ,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490346244/Bauer0419_Dragon_0906_cnciwl.jpg"
  },
  {
  restaurant_id:1,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490378999/920x920_cexdto.jpg"
  },
  {
  restaurant_id: 3,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490346362/home11_hukpx9.jpg"
  },
  {
  restaurant_id: 3,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490379387/hogg-island_uw1w1s.jpg"
  },
  {
  restaurant_id: 3,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490379436/Shucking-Oysters.-Hog-Island-Oyster-Bar-San-Francisco.-Ed-Anderson-1000_qigw3o.jpg"
  },
  {
  restaurant_id: 4,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490379521/download.0.0_rx4yom.jpg"
  },
  {
  restaurant_id: 4,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490346414/Boba-Guys-Milk-Tea-and-Snack-Bar-in-San-Francisco-CA_nbad1f.jpg"
  },
  {
  restaurant_id: 4,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490379600/image_zlwclx.jpg"
  },
  {
  restaurant_id: 5,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1489977418/home_catering-481531e1a702912a078c352cea2daeca_megaub.jpg"
  },
  {
  restaurant_id: 5,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490379768/WP_20150604_15_54_42_Pro-1_owwvwh.jpg"
  },
  {
  restaurant_id: 5,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490379883/10629459_862568957120235_8081312573875382472_o_lfacxy.jpg"
  },
  {
  restaurant_id: 6,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490346694/brendas-003_e89sie.jpg"
  },
  {
  restaurant_id: 6,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490380077/Brendas-Soul-Food-8_dav3nv.jpg"
  },
  {
  restaurant_id: 6,
  user_id: 1,
  url: "http://res.cloudinary.com/ryancfong8/image/upload/v1490380168/1597_2_xubji9.jpg"
  }
  ])

  reviews = Review.create([{
    headline: "Rooster and Rice is Great!",
    body: "The chicken is very flavorful and the sauce is a must",
    rating: 5,
    restaurant_id: 7,
    user_id: 2
    }, {
    headline: "It was just ok",
    body: "The chicken is not anything special",
    rating: 3,
    restaurant_id: 7,
    user_id: 1
    },
    {
    headline: "Great tasting chicken!",
    body: "Chicken was great, but I wish there was more options",
    rating: 4,
    restaurant_id: 7,
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
    restaurant_id: 8,
    user_id:5
    },
    {
    headline: "Best Boba in California",
    body: "Tpumps has many options and you can choose up to 3 flavors to mix in your drink.  I would come on Tuesdays for the free upgrade to Pumpbo",
    rating: 5,
    restaurant_id: 9,
    user_id: 6
    },
    {
    headline: "Wait is Too Long",
    body: "We didn't want to wait so we left",
    rating: 1,
    restaurant_id: 9,
    user_id: 2
    },
    {
    headline: "HRD Rocks!",
    body: "Unique food flavor and combination!",
    rating: 5,
    restaurant_id: 10,
    user_id: 2
    },
    {
    headline: "Dragon Beaux Has The Best Dim Sum",
    body: "The dim sum is delicious and the dumplings are so cute! I would definitely come back here again.",
    rating: 5,
    restaurant_id: 1,
    user_id: 8
    },
    {
    headline: "The Food is Awesome!",
    body: "Best Chinese Food in SF! The wait is long though.",
    rating: 4,
    restaurant_id:1,
    user_id:3
    },
    {
    headline: "Worth the Wait",
    body: "The line gets pretty long but the food is absolutely worth it! I recommend getting here early during lunch and dinner.",
    rating:5,
    restaurant_id: 1,
    user_id:7
    },
    {
    headline: "The Food Took a Long Time to Come Out",
    body: "The wait to get in was long, and the wait to get our food was longer, but the food wasn't bad.",
    rating:3,
    restaurant_id: 2,
    user_id: 5
    },
    {
    headline: "It was Ok",
    body: "The food is definitely an acquired taste",
    rating:3,
    restaurant_id:2,
    user_id:10
    },
    {
    headline: "My Favorite Place!",
    body: "Burma Superstar is fantastic! I always take my friends here whenever they visit!",
    rating:5,
    restaurant_id:2,
    user_id:4
    },
    {
    headline: "Delicious!",
    body: "The seafood is great! We ordered dozens oysters during happy hour!",
    rating: 5,
    restaurant_id: 3,
    user_id:6
    },
    {
    headline: "Great Happy Hour Spot",
    body: "Came here with coworkers after work and had a blast",
    rating:5,
    restaurant_id:3,
    user_id:9
    },
    {
    headline: "Service Wasn't Great",
    body: "Did Not Enjoy this place too much. Loud and not very good service.",
    rating:2,
    restaurant_id:3,
    user_id:10
    },
    {
    headline: "Great Place for Dinner",
    body: "Took my girlfriend out and we had a good time here. She got the pasta and I got the seafood platter. We enjoyed every bite!",
    rating: 4,
    restaurant_id: 3,
    user_id:3
    },
    {
    headline: "Best Place for Boba!",
    body: "Boba Guys is Awesome! I love their boba!",
    rating: 5,
    restaurant_id:4,
    user_id:4
    },
    {
    headline: "The Wait Is Extremely Long",
    body: "Be careful, the line can get over an hour long. Not worth it in my opinion.",
    rating: 2,
    restaurant_id: 4,
    user_id:10
    },
    {
    headline: "My Favorite Tea Place",
    body: "Boba Guys knows how to make boba right. The tea is just the right amount and the boba is soft and sweet.",
    rating:5,
    restaurant_id:4,
    user_id:7
    },
    {
    headline: "Boba Guys is Worth the Wait",
    body: "I waited 45minutes for my tea but it was so worth it!",
    rating:4,
    restaurant_id:4,
    user_id:8
    },
    {
    headline: "Sushirrito Is an Interesting Concept",
    body: "Basically a giant sushi roll and you eat it like a burrito.",
    rating:3,
    restaurant_id:5,
    user_id:5
    },
    {
    headline: "What's the Big Deal?",
    body: "Didn't think this place was anything special. Not real Japanese or Mexican food.",
    rating:1,
    restaurant_id:5,
    user_id:10
    },
    {
    headline: "This Place is Awesome!",
    body: "Sushirrito is so unique! The fish tastes awesome and I never knew I could eat sushi like this!",
    rating:5,
    restaurant_id:5,
    user_id:6
    },
    {
    headline: "Believe the Hype!",
    body: "One of my favorite places for lunch.  Line gets long around lunch but it is worth it!",
    rating:5,
    restaurant_id:5,
    user_id:3
    },
    {
    headline: "Brenda's is a Great Spot",
    body: "Always come with my girls here for Sunday Brunch! The food is fantastic!",
    rating: 5,
    restaurant_id: 6,
    user_id:9
    },
    {
    headline: "The food was...interesting",
    body: "Definitely did not recognize what I ordered.",
    rating: 2,
    restaurant_id:6,
    user_id:10
    },
    {
    headline: "Great Place!",
    body: "Brenda's is a great place for the family.",
    rating:4,
    restaurant_id:6,
    user_id:7
    },
    {
    headline: "Food is Fantastic!",
    body: "Tried this place for the first time and the food is awesome! I will be back!",
    rating:5,
    restaurant_id:6,
    user_id:4
    },
    {
    headline: "Tasty Pot Rocks",
    body: "I love the individual hot pots!",
    rating:5,
    restaurant_id:11,
    user_id:6
    },
    {
    headline: "Garlic Overload",
    body: "My girlfriend and I made a reservation here and we got seated in a private booth.  Every single thing we ordered was covered in garlic. The food was so good!",
    rating:4,
    restaurant_id:12,
    user_id:1
    },
    {
    headline: "Good Udon",
    body: "The food is good, but not outstanding ",
    rating:3,
    restaurant_id:13,
    user_id:6
    },
    {
    headline: "Best Bakery",
    body: "This bakery is a hotspot for good treats and great pictures!",
    rating:5,
    restaurant_id:14,
    user_id:8
    },
    {
    headline: "Great Dinner",
    body: "We made a reservation months in advance. Steep prices, but you definitely get what you pay for.",
    rating:4,
    restaurant_id:15,
    user_id:4
    },
    {
    headline: "East Coast meets West Coast",
    body: "The famous Halal Guys are finally in California! They taste just as good! ",
    rating:4,
    restaurant_id:16,
    user_id:10
    },
    {
    headline: "The Food was Just Ok",
    body: "Pretty much tasted exactly as I expected to. Wasn't bad, but wasn't my favorite.",
    rating:2,
    restaurant_id:17,
    user_id:4
    },
    {
    headline: "Cute Crepe Designs!",
    body: "The designs of the crepes are so cute! And they taste so good! Will definitely be back.",
    rating:5,
    restaurant_id:18,
    user_id:8
    },
    {
    headline: "Service was not Good",
    body: "Had a terrible experience here. Food wasn't great, service was awful",
    rating:1,
    restaurant_id:19,
    user_id:3
    },
    {
    headline: "Nothing special",
    body: "The pho was unique, but nothing special.",
    rating:2,
    restaurant_id:20,
    user_id:10
    },
    {
    headline: "Ok Food",
    body: "The food was exactly what I expected, but it didn't impress me.  I guess I came in with too high expectations.",
    rating:3,
    restaurant_id:21,
    user_id:5
    },
    {
    headline: "The Ice Cream is the Best!",
    body: "I always come here to reward myself after a long day!",
    rating:5,
    restaurant_id:22,
    user_id:7
    },
    {
    headline: "Too Expensive",
    body: "Fancy restaurant, but not worth the price",
    rating:2,
    restaurant_id:23,
    user_id:9
    },
    {
    headline: "Cute little place",
    body: "The place is small, but it has great food and a great atmosphere. Will be back!",
    rating:4,
    restaurant_id:24,
    user_id:6
    },
    {
    headline: "Great Food",
    body: "Aina serves unique dishes that are beautifully prepared. Will be back!",
    rating:4,
    restaurant_id:25,
    user_id:8
    },
    {
    headline: "Long Wait, But A Unique Experience",
    body: "I came here for lunch and line was really long. But it's not everday you get to eat Japanese Rice Balls.",
    rating:3,
    restaurant_id:26,
    user_id:10
    },
    {
    headline: "Great Tasting Baos",
    body: "The baos are close the traditional baos and they taste great. Be on the lookout for their food truck!",
    rating:4,
    restaurant_id:27,
    user_id:5
    },
    {
    headline: "Good Time With Friends",
    body: "Came here with some friends we all agreed that this place deserves another visit. Food is great!",
    rating:4,
    restaurant_id:28,
    user_id:4
    },
    {
    headline: "Great for the Fancy Date",
    body: "It was definitely a special night at Alexander's! Great food and company! Can't get a better steak anywhere else.",
    rating:5,
    restaurant_id:29,
    user_id:3
    },
    {
    headline: "Drinks are Great, Food is Average",
    body: "The wide variety of drinks are great, but the food was just ok.",
    rating:3,
    restaurant_id:30,
    user_id:7
    }

    ])

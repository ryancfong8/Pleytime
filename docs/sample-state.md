{
  currentUser: {
    id: 1,
    username: "app-academy"
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createReview: {errors: ["body can't be blank"]}
    createRestaurant: {errors: ["body can't be blank"]}
  },
  reviews: {
    1: {
      body: "Tastes great!",
      rating: 5,
      user_id: 1,
      restaurant_id: 1
      photos: [
        {
          id: 1,
          url: "reviewphoto.com/example"
        }
      ]
    }
  },
  restaurants: {
    1: {
      name: "Turtle Tower",
      description: "Turtle Tower is a family owned Vietnamese restaurant, specializing in pho noodle soup"
      address: "645 Larkin St. San Francisco, CA 94109"
      hours: "M-W 8am - 5pm, F-Sun 8am-5pm"
      price: $
      lat: "35.3049123"
      long: "-120.0933173"
      image_url: "examplerestaurant.com/image"
    }
  }
}

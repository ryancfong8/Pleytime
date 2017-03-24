# Pleytime

[Pleytime Live] [heroku]

[heroku]: https://pleytime.herokuapp.com/

Pleytime is a full stack web application inspired by Yelp built using React with Redux architectural framework on the frontend, Ruby on Rails on the backend, and a PostgreSQL database. Pleytime aims to enhance the user's dining experience in San Francisco with the ability to read and create reviews for restaurants.


## Features & Implementation

### Restaurants

Pleytime allows the user to access restaurant information as well as see other users' reviews.  Each restaurant's information is stored in one table in the database, with various columns such as `name`, `address`, `description`, `lat`, `long`, and other pieces of information.  The `lat` and `long`  properties keep track of each restaurant's latitude and longitude, respectively, in order to correctly place each restaurant's map marker. Each restaurant's information is rendered in 3 different places.  The first two are:

* `Restaurants`: This is a index of all the restaurants returned by the search query.  Each restaurant's `name`, `rating`, `price`, `address`, and `description` are rendered along with their location on the map. The map is rendered using the Google Maps API, and is centered on San Francisco. The map is not re-rendered upon each search, instead markers are added and removed. Each restaurant's name is a link that will take user's to the respective restaurant's detailed view.

<p align="center">
  <img src="readMe_photos/index-page.png" alt="index-page">
</p>

* `Restaurant`: This is a detailed view of a specific restaurant.  Each restaurant's information with all its reviews, business hours, and first three pictures are rendered onto this page.  Users have the ability to see all of the photos of the restaurant, as well as upload additional photos. Users also have the ability to write one review for each restaurant, and the review form is the third place the restaurant information is rendered. The review form only appears if the user is signed in. If the user has already written a review for the restaurant, the "Write a Review" button becomes an "Edit Review" button. Pictures of the website with and without a current user are shown below.

<p align="center">
  <img src="readMe_photos/detail-page.png" alt="restaurant-detail">
</p>

<p align="center">
  <img src="readMe_photos/detail-signedin-page.png" alt="restaurant-detail">
</p>

Each restaurant's rating is calculated by taking the average rating of the restaurant's reviews.  The calculation is defined by the restaurant model.

```ruby
def averageRating
  reviews = self.reviews
  sum = 0
  reviews.each do |review|
    sum += review.rating
  end

  if self.reviews.length > 0
    (sum/self.reviews.length).ceil
  else
    0
  end
end
```

### Creating and Updating a Review

The same form component is used when both creating and updating a review.  Reviews have a `headline` in addition to the `body`, in order to summarize the review. A formtype is passed to the review form component in order to determine if the form should create a review or update an existing review.  

<p align="center">
  <img src="readMe_photos/review-form-page.png" alt="review-form">
</p>

### Search Bar

Users can search for restaurants by keyword.  Search results will return the restaurants whose name or description contain the keyword.  The search is handled on the backend, through the restaurants controller. The index route filters out the restaurants based on the search query.

```ruby
def index
  restaurants = bounds ? Restaurants.in_bounds(bounds) : Restaurant.all
  if params[:query]
    restaurants = restaurants.where('name ILIKE ? OR description ILIKE ?', "%#{params[:query]}%", "%#{params[:query]}%")
  end
  @restaurants = restaurants
  render :index
end
```

If the user is on the home page, the search bar is rendered in the middle of the page instead of in the header.

<p align="center">
  <img src="readMe_photos/home-page.png" alt="review-form">
</p>

### Uploading Photos

Users may upload photos to any restaurant once they are signed in.  A modal is used to handle the file submission, and Cloudinary is used to store all the photos on the website. Users have the ability to preview the photo they uploaded. Once users upload their photos, they will instantly see it appear on the restaurant's photos page.

<p align="center">
  <img src="readMe_photos/upload.png" alt="review-form">
</p>

## Future Directions for the Project

### User Profiles

Users will be able to view their personal profile, which will contain a profile picture, past reviews, and other information the user can share about themselves. To implement this, more columns on the users table will need to be included, and that information will be rendered on a user's page.

### Rate Dishes

Instead of filtering through reviews to find out what to order, users will be able to rate and review each menu item of a restaurant. To implement this, a dishes table will need to be created, and the model will belong to a restaurant.  The dishes page will have very similar features to that of the restaurant page.

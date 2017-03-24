# Pleytime

[Pleytime Live] [heroku]

[heroku]: https://pleytime.herokuapp.com/

Pleytime is a full stack web application inspired by Yelp built using React with Redux architectural framework on the frontend, Ruby on Rails on the backend, and a PostgreSQL database. Pleytime aims to enhance the user's dining experience in San Francisco with the ability to read and create reviews for restaurants.


## Features & Implementation

###Restaurants

Pleytime allows the user to access restaurant information as well as see other users' reviews.  Each restaurant's information is stored in one table in the database, with various columns such as `name`, `address`, `description`, `lat`, `long`, and other pieces of information.  The `lat` and `long` kept track of each restaurant's latitude and longitutde, respectively, in order to correctly place each restaurant's map marker. Each restaurant's information is rendered in 3 different places.  The first two are:

* `Restaurants`: This is a index of all the restaurants returned by the search query.  Each restaurant's `name`, `rating`, `price`, `address`, and `description` are rendered along with their location on the map. Each restaurant's name is a link that will take user's to the respective restaurant's detailed view.

* `Restaurant`: This is a detailed view of a specific restaurant.  Each restaurant's information with all its reviews, business hours, and first three pictures are rendered onto this page.  Users have the ability to see all of the photos of the restaurant, as well as upload additional photos. Users also have the ability to write one review for each restaurant, and the review form is the third place the restaurant information is rendered.

###Creating and Updating a Review

The same form component is used when both creating and updating a review.  Reviews have a `headline` in addition to the `body`, in order to summarize the review. A formtype is passed to the review form component in order to determine if the form should create a review or update an existing review.  

###Search Bar

Users can search for restaurants by keyword.  Search results will return the restaurants whose name or description contain the keyword.  The search is handled on the backend, through the restaurants controller.

## Future Directions for the Project

###User Profiles

Users will be able to view their personal profile, which will contain a profile picture, past reviews, and other information the user can share about themselves. To implement this, more columns on the users table will need to be included, and that information will be rendered on a user's page.

###Rate Dishes

Instead of filtering through reviews to find out what to order, users will be able to rate and review each menu item of a restaurant. To implement this, a dishes table will need to be created, and the model will belong to a restaurant.  The dishes page will have very similar features to that of the restaurant page.

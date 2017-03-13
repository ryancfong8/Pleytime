## Component Hierarchy

**AuthFormContainer**
 - AuthForm

**HomeContainer**
 - Home
 - Featured Restaurant
 - Featured Restaurant
 - Featured Restaurant

 **RestaurantSearch**
  + AutoSearch
  * AutoSearchResults

**SearchResultsContainer**
 * SearchResultsIndex
  - Map
  - Restaurant

**RestaurantContainer**
  * RestaurantIndex

**RestaurantIndex**
  - Title
  - Description
  - Rating
  - Map
  - Reviews
  - NewReview

**RestaurantForm**
 - Add/Edit Restaurant

 **ReviewForm**
 - Edit Restaurant

## Routes

|Path   | Component   |
|-------|-------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/home" | "HomeContainer" |
| "/home/restaurant/:restaurantId" | "RestaurantContainer" |
| "/home/search-results" | "SearchResultsContainer"
| "/new-restaurant" | "RestaurantFormContainer" |
| "/edit-restaurant" | "RestaurantFormContainer" |
| "/edit-review" | "ReviewFormContainer" |

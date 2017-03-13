# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
email           | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique

## reviews
column name  | data type | details
-------------|-----------|-----------------------
id           | integer   | not null, primary key
body         | text      | not null
rating       | integer   | not null, inclusive [1, 2, 3, 4, 5]
user_id      | integer   | not null, foreign key (references users)
restaurant_id| integer   | not null, foreign key (references restaurants), indexed

## restaurants
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
description | string    | not null
address     | string    | not null
hours       | string    | not null
price       | integer   | not null, inclusive [$, $$, $$$, $$$$]
user_id     | integer   | not null, foreign key (references users)
lat         | float     | not null
long        | float     | not null
image_url   | string    | not null

## pictures
column name  | data type | details
-------------|-----------|-----------------------
id           | integer   | not null, primary key
restaurant_id| integer   | not null, foreign key (references restaurants)
review_id    | integer   | not null, foreign key (references reviews)
user_id      | integer   | not null, foreign key (references users)
url          | string    | not null

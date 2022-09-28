# README

## ELECTRIC VEHICLE API

Design a REST API for managing electric vehicles.

We want to store the following information about vehicle in the database:
````
Vehicle:
- make
- model
- model year
- battery capacity in kwh
- max range in miles
````

Note: The vehicle record should be unique. e.g. Tesla Model 3 2021 should only be stored once.

Add your assumptions at the end of this file.
### Endpoints
---
`GET /vehicles` JSON response format:
- Returns all vehicle
````
[
 {
    "make": "Tesla",
    "model": "Model 3",
    "year": 2021,
    ...
 },
 {
    "make": "PORSCHE",
    "model": "CAYENNE",
    "year": 2020,
    ...
 }
]
````


`POST /vehicles` JSON response format:
- Creates a vehicle
````
{
    "make": "Tesla",
    "model": "Model 3",
    "year": 2021,
    ...
}
````

`GET /vehicles/:id` JSON response format:
- Returns the vehicle specified in the url
````
{
    "make": "Tesla",
    "model": "Model 3",
    "year": 2021,
    ...
}
````

`PUT /vehicles/:id` JSON response format:
- Update the vehicle
````
{
    "make": "Tesla",
    "model": "Model 3",
    "year": 2021,
    ...
}
````

`DELETE /vehicles/:id` JSON response format:
- Deletes the vehicle
````
{
    "make": "Tesla",
    "model": "Model 3",
    "year": 2021,
    ...
}
````

## Advanced
`GET /vehicles` JSON response format:
1. Filter by make, e.g. return all vehicles manufactured by Tesla.
````
[
 {
    "make": "Tesla",
    "model": "Model 3",
    "year": 2021,
    ...
 },
 {
    "make": "Tesla",
    "model": "Model S",
    "year": 2020,
    ...
 }
]
````

2. Add pagination to the above endpoint. Ability to set the number of records to be returned per request and the page number.
- e.g. `GET /vehicles?page=1&per=10` - returns the first 10 vehicles


## Set up
You will need to fork this repo. Clone the forked repo to your local machine. Push your changes to your repo.

### Installing
`bundle install`

You will need ruby version: 2.7.3
### A migration file is provided:
  * `db/migrate/20220927165948_create_vehicles.rb`

You can make changes to this file or if you want to create your own, then remove the file and generate your migration.

Once migration is ready run: `rails db:migrate` to run your migration files

### Routes
Route has been configured, you can view the defined routes by running: `rails routes`

### Test
Tests has also been set up. Will not be assessed on testing.

### Running your API
Running rails server: `rails s`

It will run on: `localhost:3000`

Recommend using Postman for testing your API.

Or you can hit your API via curl command:

````
curl http://localhost:3000/vehicles/1
````

### Assumptions
- A user will not update a record to be the same as an exisiting record
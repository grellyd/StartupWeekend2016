# Poolr Backend API

## Highlights:

* Backend repository for Poolr, a networking app to connect professionals while carpooling.
* It forms a Ruby on Rails API to integrate with the ReactJS frontend.
* Poolr's goal is to create meaningful personal connections amongst working professionals from time lost during commuting, and to disrupt traditional siloed networking opportunities.

## Purpose:
* To model and store use data.
* To produce compatible ride groups from:
  1. Arrival Time
  2. Driver Origin
  3. Deviation Allowance from the driver's optimal route
  4. Rider Availability

### Matching Logic:
1. A ride is created from the driver's interface for a certain date.
2. That trip has the driver's home and work location set as the origin and destination
3. The an intial route is mapped along the optimal route.
4. The area band around the route is simulated from the driver's deviation allowance.
5. Available riders are found.
6. Matches are then presented to the driver through the api endpoints.
7. The driver's selections are returned through the api 
8. The final route is calculated with the driver and the riders.

## Stack:
* Rails 5.0.0.1
* Ruby 2.3.1p112
* Auto-deploys off Production branch to Heroku webapp.
* Data generated through curl requests rather than DB migrations, to simulate frontend requests.

## Future Expansions
* Historical User Geolocation Data Collection to provide geographic trend mapping.
* Machine Learning on neighborhood demand to provide deeper understanding of the classifications for our user base.
  * Allows for more targeted networking marketing and user acquisition strategies. 

## API Endpoints

* root/api/v1/users/
   * get      users#index
   * post     users#create

* root/api/v1/users/:id
   *  get      users#show
   *  put      users#update
   *  patch    users#update
   *  delete   users#destroy

* root/api/v1/trips
   * get     trips#index
   * post    trips#create

* root/api/v1/trips/:id
   *  get     trips#show
   *  put     trips#update
   *  patch   trips#update
   *  delete  trips#destroy

*  root/api/v1/locations
   *  get     locations#index
   *  post    locations#create

*  root/api/v1/locations/:id
   *  get     locations#show
   *  put     locations#update
   *  patch   locations#update
   *  delete  locations#destroy


## Difficulties
* Poor DB schema, which led to isses when modeling the database.
  * Inparticular the relationships between the objects was improperly set up and managed.
* As the model was imperfect, the farther the database progressed, the more intertwined and complex the application became. This of course led to errors which became harder and harder to track down.
* Initial schema had many ties between the three main models, Trips, Users, and Locations
* Solution:
  * Create a schema where the objects are not as entangled.
  * EG:

### Users
 - name:string
 - credit:int
 - details:int - foreign_key UserDetails

### UserDetails
 - rating:float
 - onBoarding:string
 - occupationalField:string
 - gender:string
 - verified:boolean
 - description:string
 - linkedInProfile:string
 - profilePicUrl:string

### Location
 - latLon: point
 - user:int - foreign_key User
 - trip: int - foreign_key Trip

### Trip


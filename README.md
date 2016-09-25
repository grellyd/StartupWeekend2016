# StartupWeekend2016

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
  4. Rider Availablity


## Stack:
* Rails 5.0.0.1
* Ruby 2.3.1p112
* Gentoo Linux Dev Environment
* Auto-deploys off Production branch to Heroku webapp.
* Data generated through curl requests rather than DB migrations, to simulate frontend requests.

## Difficulties
* Poor DB schema, which led to isses when modeling the database.
  * Inparticular the relationships between the objects was improperly set up and managed.
* As the model was imperfect, the farther the database progressed, the more intertwined and complex the application became.
* Initial schema had many ties between the three main models, Trips, Users, and Locations
* SOLUTION


# StartupWeekend2016

## Highlights:

* Backend repository for Poolr, a networking app to connect professionals while carpooling.
* It forms a Ruby on Rails API to integrate with the ReactJS frontend.
* Poolr's goal is to create meaningful networking amongst working professionals from time lost during commuting, and to recreate personal connections while opening doors to meeting new people in various industries.

## Purpose:
* To model and store use data.
* To produce compatible ride groups



## Stack:
* Rails 5.0.0.1
* Ruby 2.3.1p112
* Gentoo Linux Dev Environment
* Auto-deploys off Production branch to Heroku webapp.
* Data generated through curl requests rather than DB migrations, to simulate frontend requests.

## Difficulties
* Poor DB schema, which led to isses when modeling the database.
* As the model was imperfect, the farther the database progressed, the more intertwined and complex the application became.
* Initial schema had many ties between the three main models, Trips, Users, and Locations
* SOLUTION


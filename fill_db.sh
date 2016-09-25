#!/bin/bash

curl -H "Content-Type:application/json; charset=utf-8" -X POST -d '{"location": {"lat": 49.282729, "lon":-123.120738}}' "http://localhost:3000/api/v1//locations" 
curl -H "Content-Type:application/json; charset=utf-8" -X POST -d '{"location": {"lat": 49.235006, "lon":-123.057261}}' "http://localhost:3000/api/v1//locations" 


echo curl -H "Content-Type:application/json; charset=utf-8" -X POST -d '{"location": {"lat": 5, "lon":7}}' "http://localhost:3000/api/v1//locations"

curl -H "Content-Type:application/json; charset=utf-8" -X POST -d '{"user": { "fName": "Alison", "lName": "Ang", "credits":0, "rating": 0, "onBoarding": "", "verifiedDriver":false, "field":"Software Development", "gender":"female", "profilePic":"url", "description":"A lovely person", "trips": null, "home_location": 0, "work_location": 1}}' "http://localhost:3000/api/v1//users"


echo curl -X POST -H "Content-Type:application/json; charset=utf-8" -d '{"location": {"lat": 5, "lon":7}}' http://localhost:3000/api/v1/locations
echo curl -X POST -H "Content-Type:application/json; charset=utf-8" -d '{"location": {"lat": 5, "lon":7, "Trip": 0, "User":0}}' http://localhost:3000/api/v1/locations

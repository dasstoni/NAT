# README

Nerdery Assessment Test

* Ruby version 2.3.1 ... Rails version 5.0.6

* Voting and Suggestion snack service for employees of the Nerdery

* Postgresql (Empty db..All data retrieved from API)

* Did not include Devise or user authentication since it can be assumed each user is using the same computer and Web Browser for votes and submissions

* Used Sessions instead of Cookies to keep track of user votes

* Used Bootstrap for simple styling

* Other gems used: rails_12 factor for production, figaro for storing my API Key, pry-rails for debugging

* TO RUN: Clone repository -> Navigate to directory of application in terminal -> Run rails s -b 0.0.0.0 in Terminal/Command Prompt -> Navigate to localhost:3030
  * Production (Heroku) -> https://nat-david-stonikas.herokuapp.com/

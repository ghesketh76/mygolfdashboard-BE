# myGolfDashboard Backend API

## General Info

This is a backend API for the myGolfDashboard webpage. It is built with Ruby on Rails and utilizes a SQL database. It has the capability to run RESTful actions on its controllers for New Users and for new rounds using full auth.

## Frontend

https://github.com/ghesketh76/mygolfdashboard-FE


## Technologies
* Ruby - 2.6.1
* Rails - 6.0.3
* Puma - 4.1
* SQLite3 - 1.4
* Bcrypt - 3.1.7
* JWT

## Setup

To get started, clone the repository from github to your computer.

Then, CD into the repo directory and type the following commands into your terminal:

```
$ bundle install
$ rails db:migrate
$ rails db:seed
$ rails s

```

Note: Ensure the rails server is running on localhost:3000

## Features
* REST Controllers with Auth for new users and new rounds
* Custom controllers and routes for showing average score and showing rounds for the logged in user.

## Contact

Created by [Grant Hesketh](https://www.linkedin.com/in/granthesketh/) 

Feel free to contact me!

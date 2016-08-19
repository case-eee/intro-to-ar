# Introduction to ActiveRecord 1.0

## Overview
We have a table of `horses`. An individual `Horse` has a `name`, `age`, and `total_winnings`.

Your job is to start exploring ActiveRecord methods. If you open `app/models/horse.rb`, you'll notice that our `Horse` class inherits from `ActiveRecord::Base`. This is how we have access to all of ActiveRecord's methods.

## Setup
In order to get started, you'll need to run the following commands from the command line:
`bundle install`
`rake db:create`
`rake db:migrate`
`rake db:seed`

Once you've run these commands, if you run `tux` from the command line, you'll enter a console with your code loaded (pretty sweet, right?!).

### Exploration

#### find

ActiveRecord's `#find` takes an integer as an argument (the id of the record you're looking for). It returns the record if it finds it; if it doesn't find it - it returns an `ActiveRecord::RecordNotFound` error.

If I was looking for the horse with id 90, I would run `Horse.find(90)`

Practice using `#find`. See if you can find the following:
- The Horse with id 3
- The Horse with id 1
- The Horse with id 7

#### find_by

Similar to `find`, `find_by` will run a SQL query to find the specific record based on the data you pass it. The difference between `find` and `find_by` is that `find` only accepts the `id`, but with `find_by`, we can pass it the attribute we want to lookup by.

For example, if I wanted to find the horse with the name "Penelope", I'd run `Horse.find_by(name: "Penelope")`. You can also pass `find_by` more than one argument. If I wanted to find the horse with the name "Penelope" and age 29, I could run `Horse.find_by(name: "Penelope", age: 29)`. Notice that I'm passing in key/value pairs to `find_by`.

Another important note is if we pass `find_by` a value that our database doesn't have (for example: `Horse.find_by(name: "Hola")`), the return value with be `nil`. ActiveRecord will not through an error, but rather return `nil`.

- where
- create
- new
- save
- update
- delete

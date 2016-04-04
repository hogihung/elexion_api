#Rails API Example Application - Elexion(2016)

* Ruby version: 2.3.0
* Rails version: 5.0.0 beta 3
* Database:  Postgres
* Test suite:  RSpec

*See the Gemfile for more information*

### NOTE: This application is still a work in progress.

##Getting Started
Clone the application:
```
clone https://github.com/hogihung/elexion_2016.git
cd elexion_2016
```


Prepare your database:
```
rails db:create
rails db:migrate
```

## Prime Development Data
To ensure we have consistent data when we are testing, use the following command to reset your dev database:

```
rails dev:prime
```

## Run the tests
You can run the test suite, which is RSpec based, by executing the following command:

```
rspec
``` 

## Start Web Server - Development environment
```
rails server
```



# README

Lauren and Jordan Harirchi wedding website

[http://the-lj-wedding.herokuapp.com/](http://the-lj-wedding.herokuapp.com/)

## Setup
Copy the example environment variables to your own  `.env` file in the root directory.

```
cp .env.example .env
```

Now, setup the Rails app
```
bundle install
rake db:create
rake db:schema:load
rake db:seed
```

## Running tests
There are RSpec and Cucumber tests.

```
bundle exec rake
```

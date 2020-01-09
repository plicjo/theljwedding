# README

Lauren and Jordan Harirchi wedding website

[http://the-lj-wedding.herokuapp.com/](http://the-lj-wedding.herokuapp.com/)

## Setup
Create a `.env` file in the root directory and fill it with the following:

```
RECAPTCHA_SITE_KEY=foo
RECAPTCHA_SECRET_KEY=bar
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

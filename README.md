# README #

Lauren and Jordan Harirchi wedding website

[http://the-lj-wedding.herokuapp.com/](http://the-lj-wedding.herokuapp.com/)

## Setup
Create a `.env` file in the root directory and fill it with the following:

```
AWS_ACCESS_KEY=foo
AWS_SECRET_ACCESS_KEY=bar
RECAPTCHA_PRIVATE_KEY=foo
RECAPTCHA_PUBLIC_KEY=bar
```
Now, setup the Rails app
```
bundle install
rake db:create
rake db:migrate
rake db:seed
```

## Running tests
There are RSpec and Cucumber tests.

```
bundle exec rake
```

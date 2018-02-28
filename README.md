# README #

Lauren and Jordan Harirchi wedding website

[ ![Codeship Status for Josh_iDrive/theljwedding](https://codeship.io/projects/c8f83390-f557-0131-a2a1-36bfe20e8a91/status)](https://codeship.io/projects/28276)

## Setup
Create a `.env` file in the root directory and fill it with the following:

```
AWS_ACCESS_KEY=foo
AWS_SECRET_ACCESS_KEY=bar
RECAPTCHA_PRIVATE_KEY=foo
RECAPTCHA_PUBLIC_KEY=bar
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

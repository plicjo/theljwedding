source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', ' ~> 4.2.3'
gem 'passenger'                # Web Server
gem 'pg'                       # Postgres Database
gem 'autoprefixer-rails'       # Autoprefix CSS styles
gem 'aws-sdk'                  # Connect to S3
gem 'bourbon'                  # Bourbon
gem 'bcrypt'                   # Encryption
gem 'coffee-rails', '~> 4.1.0' # CoffeeScript
gem 'cocoon'                   # Dynamic Nested Forms
gem 'devise'                   # Authentication
gem 'font-awesome-rails'       # Font Awesome
gem 'haml-rails'               # HTML Preprocessor
gem 'jquery-rails'             # jQuery
gem 'jquery-turbolinks'        # Integrate Turbolinks with jQuery better
gem 'jquery-ui-rails'          # jQuery UI
gem 'mini_magick'              # Image Processing
gem 'refile', require: 'refile/rails'  # File Uploads
gem 'refile-mini_magick'       # Integrates Refile and MiniMagick
gem 'refile-s3'                # Upload images to S3
gem 'responders', '~> 2.0'     # Clean controllers
gem 'sass-rails', '~> 5.0'     # SASS
gem 'simple_form'              # Form generator
gem 'spicerack', :git => 'git://github.com/hashrocket/spicerack.git' # Stylesa nd JS
gem 'turbolinks'               # Fast Page Loads
gem 'uglifier', '>= 1.3.0'     # JS Compression
gem 'will_paginate-bootstrap'  # Bootstrap styles for pagination

group :development, :test do
  gem 'pry'                      # Code debugger
  gem 'spring'                   # Fast Application loading
  gem 'faker'                    # Fake data
  gem 'dotenv-rails'             # Environment Variables
end

group :development do
  gem 'better_errors'            # Better Ruby errors
  gem 'binding_of_caller'
  gem 'byebug'
  gem 'quiet_assets'             # Mute assets in Rails server
end

group :test do
  gem 'capybara'                       # Simulate user
  gem 'poltergeist'                    # Simulate browser JS
  gem 'cucumber-rails', require: false # Acceptance tests
  gem 'database_cleaner'               # Clean test db
  gem 'factory_girl_rails'             # Factories for tests
  gem 'launchy'                        # Launch browser on test failure
  gem 'rspec-rails'                    # Functional tests
  gem 'simplecov'                      # See test coverage
  gem 'shoulda-matchers'               # Quick test writing
  gem 'vcr'
  gem 'webmock'
end

group :production do
  gem 'heroku-deflater' # Gzip static files
  gem 'newrelic_rpm'    # App Monitoring
  gem 'rails_12factor'  # Heroku plugins
end

gem 'sdoc', '~> 0.4.0', group: :doc

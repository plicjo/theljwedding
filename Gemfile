source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.1'
gem 'passenger'                # Web Server
gem 'pg'                       # Postgres Database

gem 'bcrypt'                   # Encryption
gem 'coffee-rails', '~> 4.1.0' # CoffeeScript
gem 'devise'                   # Authentication
gem 'figaro'                   # Environment Variables
gem 'font-awesome-rails'       # Font Awesome
gem 'gmaps-autocomplete-rails' # GMaps Autocomplete Fields
gem 'haml-rails'               # HTML Preprocessor
gem 'hirb'                     # Pretty console
gem 'jquery-rails'             # jQuery
gem 'jquery-turbolinks'        # Integrate Turbolinks with jQuery better
gem 'jquery-ui-rails'          # jQuery UI
gem 'redis'                    # Key-Value store server for background jobs
gem 'refile'                   # File Uploads
gem 'responders', '~> 2.0'     # Clean controllers
gem 'sass-rails', '~> 5.0'     # SASS
gem 'sidekiq'                  # Background Job Queue
gem 'simple_form'              # Form generator
gem 'turbolinks'               # Fast Page Loads
gem 'uglifier', '>= 1.3.0'     # JS Compression
gem 'will_paginate'            # Pagination
gem 'will_paginate-bootstrap'  # Bootstrap styles for pagination

group :development, :test do
  gem 'pry'                      # Code debugger
  gem 'spring'                   # Fast Application loading
  gem 'spring-commands-cucumber' # Spring for Cucumber
  gem 'spring-commands-rspec'    # Spring for RSpec
  gem 'faker'                    # Fake data
end

group :development do
  gem 'annotate'
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
  gem 'guard'                          # Watch project directory
  gem 'guard-livereload'               # Reload page on save
  gem 'guard-cucumber'                 # Run features on save
  gem 'guard-rspec'                    # Run specs on save
  gem 'launchy'                        # Launch browser on test failure
  gem 'rspec-rails'                    # Functional tests
  gem 'simplecov'                      # See test coverage
  gem 'shoulda-matchers'               # Quick test writing
  gem 'shoulda-callback-matchers', '~> 1.1.1' # Rspec callback matchers
  gem 'webmock'                        # Fake HTTP Requests
end

group :production do
  gem 'heroku-deflater' # Gzip static files
  gem 'rails_12factor'  # Heroku plugins
end

gem 'sdoc', '~> 0.4.0', group: :doc

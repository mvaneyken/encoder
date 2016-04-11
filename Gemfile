source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Manage settings in convenient (public vs private) fashion
gem 'config', git: 'https://github.com/railsconfig/config.git'

# UI
gem 'bootstrap-sass', '~> 3.2.0'
gem "haml-rails"                          # HTML Abstraction Markup Language
gem 'nested_form'
gem 'simple_form', '~>3.1.0'
gem 'will_paginate-bootstrap', '~> 1.0.1' # Paginations (making pages)

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


group :development do
  gem "better_errors"                     # Replace Rails error page with a more useful error page
  gem "binding_of_caller"                 # Allow better_errors to provide REPL (Read - Eval - Print - Loop) functionality
  gem 'quiet_assets'                      # Turns off the Rails asset pipeline log
end

group :test do
  gem 'rspec-rails', '~> 2.14.0'
  gem 'capybara'
  gem 'launchy'
  gem "database_cleaner"
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', :require => false
  gem 'poltergeist'
end

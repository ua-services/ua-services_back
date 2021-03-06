# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.2'

# Auth
gem 'devise', '~> 4.7.1'
gem 'devise-jwt', '~> 0.6.0'
gem 'pundit'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', '~> 1.0.6'

# Fake-data generator
gem 'faker', '~> 2.2.1'

# Fetching env variables
gem 'r_creds', '~> 1.0.1'

# Serializer
gem 'blueprinter', '~> 0.23.3'

# Soft-delete
gem 'acts_as_paranoid', '~> 0.6.3'

# Files uploading
gem 'carrierwave', '~> 2.0'
gem 'fog', '~> 2.2.0'
gem 'fog-core', '~> 2.1'

group :development, :test do
  gem 'dotenv-rails', '~> 2.7.5'
  gem 'factory_bot_rails', '~> 5.1.1'
  gem 'fuubar', '~> 2.5.0'
  gem 'pry', '~> 0.13.0'
  gem 'pry-byebug', '~> 3.9.0'
  gem 'pry-rails', '~> 0.3.9'
  gem 'pry-rescue', '~> 1.5.0'
end

group :development do
  gem 'better_errors', '~> 2.6.0'
  gem 'binding_of_caller', '~> 0.8.0'
  gem 'listen', '~> 3.1.5'
  gem 'rubocop', '~> 0.81.0'
  gem 'spring', '~> 2.1.0'
  gem 'spring-watcher-listen', '~> 2.0.1'
  gem 'web-console', '~> 4.0.1'
end

group :test do
  gem 'database_cleaner', '~> 1.8.3'
  gem 'json_spec', '~> 1.1.5'
  gem 'rails-controller-testing', '~> 1.0.4'
  gem 'rspec-rails', '~> 4.0.0'
  gem 'shoulda-matchers', '~> 4.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

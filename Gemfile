source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.1'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.2', '>= 7.0.2.3'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use sqlite3 as the database for Active Record
# gem "sqlite3", "~> 1.4"

# Use postgresql as the database
gem 'pg'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Image editing
gem 'mini_magick'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '>= 1.2'

# Rubocop Ruby static code analyzer (a.k.a. linter) and code formatter based on the Ruby Style Guide (https://rubystyle.guide/)
gem 'rubocop', require: false
gem 'rubocop-performance', require: false
gem 'rubocop-rails', require: false
gem 'rubocop-rspec', require: false

# Securely configure Rails applications
gem 'figaro'

# Catch unsafe migrations in development
# gem 'strong_migrations'

# Provides a robust endpoint to perform server health checks
gem 'okcomputer'

# Authorization library which restricts what resources a given user is allowed to access.
gem 'cancancan'

# Automatically apply several headers that are related to security
gem 'secure_headers'

# Very simple Roles library without any authorization enforcement supporting scope on resource object.
gem 'rolify'

# Build reusable, testable & encapsulated view components in Ruby on Rails
gem 'view_component'

# Allows the records of a Ruby on Rails ActiveRecord model to be organised as a tree structure (or hierarchy)
gem 'ancestry'

# reducing the number of queries it makes
# gem 'bullet', '~> 6.7', '>= 5.7.5', group: 'development'
# gem 'ruby-growl'
# gem 'ruby_gntp'

# solr search engine gems
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
gem 'sunspot_rails', github: 'sunspot/sunspot', glob: 'sunspot_rails/*.gemspec'
# gem 'sunspot_rails', '~> 2.2', '>= 2.2.5'
gem 'sunspot_solr'
gem 'progress_bar'

# user authentication
gem 'devise'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  # gem 'letter_opener'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem 'spring'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

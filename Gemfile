source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.1'

gem 'rails', '~> 7.0.2', '>= 7.0.2.3'
gem 'sprockets-rails'
gem 'pg'
gem 'puma', '~> 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'bootsnap', require: false
gem 'mini_magick'
gem 'image_processing', '>= 1.2'
gem 'rubocop', require: false
gem 'rubocop-performance', require: false
gem 'rubocop-rails', require: false
gem 'rubocop-rspec', require: false
gem 'figaro'
gem 'okcomputer'
gem 'cancancan'
gem 'secure_headers'
gem 'rolify'
gem 'view_component'
gem 'ancestry'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
gem 'sunspot_rails', github: 'sunspot/sunspot', glob: 'sunspot_rails/*.gemspec'
gem 'progress_bar'
gem 'sunspot_solr'
gem 'devise'
gem 'paper_trail'
# gem "sqlite3", "~> 1.4"
# gem "redis", "~> 4.0"
# gem "kredis"
# gem 'bcrypt', '~> 3.1.7'
# gem "sassc-rails"
# gem 'strong_migrations'
# gem 'bullet', '~> 6.7', '>= 5.7.5', group: 'development'
# gem 'ruby-growl'
# gem 'ruby_gntp'
# gem 'sunspot_rails', '~> 2.2', '>= 2.2.5'

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

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'
gem 'rails', '~> 5.2.1'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Use Puma as the app server
gem 'puma', '~> 3.11'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Turbolinks makes navigating Rails applications faster
gem 'turbolinks', '~> 5'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Use sidekiq as the ActiveJob queue adapter
gem "sidekiq"

# Template Engine
gem 'haml-rails'

# Use ActiveStorage variant
gem 'mini_magick', '~> 4.8'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Devise for user authentication
gem 'devise'

# Use SimpleForm to generate forms
gem 'simple_form'

group :development, :test do
  gem 'byebug', '~> 10.0', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 4.11'
  gem 'faker', '~> 1.9'
  gem 'haml-lint'
  gem 'pry', '~> 0.12.2'
  gem 'pry-byebug', '~> 3.6'
  gem 'pry-rails', '~> 0.3.7'
  gem 'rspec-rails', '~> 3.8'
  gem 'rubocop', '~> 0.60.0', require: false
  gem 'rubocop-rspec', '~> 1.30', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring', '~> 2.0'
  gem 'spring-commands-rspec', '~> 1.0'
  gem 'spring-watcher-listen', '~> 2.0'
  gem 'web-console', '~> 3.7'
end

group :test do
  gem 'capybara', '~> 3.11'
  gem 'coveralls_reborn', '~> 0.12.0', require: false
  gem 'email_spec', '~> 2.2'
  gem 'selenium-webdriver', '~> 3.14'
  gem 'simplecov', '~> 0.16.1', require: false
  gem 'webmock', '~> 3.4', require: false
end

group :staging, :production do
  gem 'rack-timeout', '~> 0.5.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Important: this must go last. Generates styled templates.
source "https://gems.rapidrailsthemes.com/gems" do
  gem "rrt", "~> 1.2.4"
end

gem 'jquery-rails'

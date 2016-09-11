source 'https://rubygems.org'

# dalli is a ruby memcache client
gem 'dalli'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'autoprefixer-rails'
gem 'delayed_job_active_record'
gem 'flutie'
gem 'honeybadger'
gem 'normalize-rails'
gem 'rack-canonical-host'
gem 'recipient_interceptor'
gem 'skylight'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'devise'
gem 'pundit'
gem 'simple_form'
gem 'kaminari'
gem 'carrierwave'
gem 'thredded'
gem 'sprockets'
gem 'sprockets-es6'
gem 'title'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 3.0'
gem 'bcrypt', '~> 3.1.7'
gem 'capistrano-rails', group: :development
gem 'masonry-rails'

# html-pipeline filter dependencies
gem 'github-linguist'
gem 'rinku'
gem 'escape_utils'
gem 'email_reply_parser'
gem 'gemoji'
gem 'github-markdown'
gem 'sanitize'
gem 'RedCloth'


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'awesome_print'
  gem 'bullet'
  gem 'bundler-audit', require: false
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :development, :staging do
  gem 'rack-mini-profiler', require: false
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
end

group :production, :staging do
  gem 'puma', '~> 3.0'
  gem 'rack-timeout'
  gem 'rails_stdout_logging'
  # rails_12factor works out of the box with rails 5
  # gem 'rails_12factor'
end

group :test do
  gem 'database_cleaner'
  gem 'formulaic'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
  gem 'cucumber-rails', require: false
end

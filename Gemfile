# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.6.3"

gem "rails", "~> 5.2.3"

gem "active_interaction", "~> 3.7"
gem "activeadmin"
gem "airbrake", "~> 9.2"
gem "bootsnap", ">= 1.1.0", require: false
gem "devise"
gem "flipper", "~> 0.16"
gem "flipper-active_record", "~> 0.16"
gem "flipper-ui", "~> 0.16"
gem "mailgun-ruby", "~> 1.1"
gem "pg", "~> 1.1.0"
gem "puma", "~> 3.12.6"
gem "uglifier", "~> 4.1"
gem "webpacker", "~> 3.5"
gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'

group :development, :test do
  gem "annotate"
  gem "awesome_print"
  gem "brakeman"
  gem "bundler-audit"
  gem "capybara"
  gem "database_cleaner"
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "foreman"
  gem "pry-byebug"
  gem "rails-erd"
  gem "rspec-rails"
  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rspec"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "simplecov"
end

group :development do
  gem "bullet"
  gem "letter_opener"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara-selenium"
  gem "webdrivers"
end

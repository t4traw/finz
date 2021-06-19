source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.3"

gem "rails", "~> 6.1"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "jbuilder", "~> 2.7"
gem "simpacker"
gem "sorcery"
gem "warning"
gem "pry"
gem "carrierwave", "~> 1.3.1"
gem "cloudinary", "1.11.1"
gem "identicon"
gem "gon"
gem "rails-i18n"
gem "mini_magick"
gem "buoys"
gem "rollbar"
gem "banken"
gem "active_hash"
gem "acts-as-taggable-on"

gem "bootsnap", ">= 1.4.2", require: false

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "letter_opener"
  gem "dotenv-rails"
  gem "brakeman", require: false
  gem "faker"
  gem "factory_bot_rails"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "annotate"
  gem "rufo"
  gem "oneshot_task_generator"
  gem "letter_opener_web", "~> 1.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "mock_redis"
  gem "guard"
  gem "guard-minitest"
  gem "minitest-reporters"
  gem "vcr"
  gem "webmock"
end

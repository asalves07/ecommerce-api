source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.0.3', '>= 6.0.3.3'

# Basic
gem 'bootsnap', '>= 1.4.2', require: false
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'

# Auth
gem 'devise_token_auth', '~> 1.1.4'

#Cors
gem 'rack-cors', '~> 1.1.1'

# Delayed Jobs
gem "sidekiq", '~> 6.1.3'
gem "sidekiq-scheduler", '~> 3.0.1'

# Validation
gem 'cpf_cnpj', '~> 0.5.0'

# Rendering
gem 'jbuilder', '~> 2.10.1'

# HTTP Request
gem 'httparty', '~> 0.18.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'shoulda-matchers', '~> 4.0'
  gem 'database_cleaner'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

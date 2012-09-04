source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'



gem 'inherited_resources'
gem 'haml-rails', git: 'https://github.com/indirect/haml-rails.git'
gem 'paperclip', '~> 3.0'
gem 'bootstrap-sass', '2.0.4'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem "sass-rails", "~> 3.1.5"
  gem 'coffee-rails', "~> 3.1.1"
  gem 'uglifier', "~> 1.0.3"
end

gem 'jquery-rails'

group :development, :test do
  gem 'rspec-rails'

  gem 'factory_girl_rails'
  gem 'faker'

  gem 'fivemat'

  gem 'ruby-debug19', require: 'ruby-debug'

  gem 'thin'
  
  gem 'sqlite3'
end

group :test do
  gem 'rspec'
  gem 'capybara'
end

group :production do
  #gem 'therubyracer-heroku', '0.8.1.pre3' # you will need this too
  gem 'pg'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

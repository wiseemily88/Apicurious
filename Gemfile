source 'https://rubygems.org'


git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'basscss-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'omniauth-github'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.5'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'figaro'

group :development, :test do
  gem 'rspec-rails', '~> 3.6'
  gem "pry", :require => "pry"
  gem 'byebug'
  gem 'capybara'
  gem "factory_bot_rails"
  gem 'launchy'
  gem 'database_cleaner'
  gem 'faker'
  gem 'shoulda-matchers', '~> 3.1'
end
group :test do
  gem 'vcr'
  gem 'webmock'
end  

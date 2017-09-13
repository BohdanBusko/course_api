source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'mongoid'
gem 'whenever', :require => false

gem 'rails', '~> 5.1.3'
gem 'puma', '~> 3.0'
gem 'jbuilder', '~> 2.5'
gem 'rack-cors'
gem 'bcrypt'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

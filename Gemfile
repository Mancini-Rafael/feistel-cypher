source 'https://rubygems.org'

gem 'dotenv'

group :development, :test do
  gem 'byebug'
  gem 'pry'
  %w[rspec rspec-core rspec-expectations rspec-mocks rspec-support].each do |lib|
    gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'main'
  end
end

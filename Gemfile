# encoding: utf-8

source 'https://rubygems.org'

group :test do
  gem 'rake'
#  gem 'chefspec',   '~> 4.2.0'
  gem 'foodcritic', '~> 4.0'
  gem 'thor-foodcritic'
#  gem 'rubocop',    '~> 0.28.0'
  gem 'coveralls',  require: false
end

group :development do
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-kitchen'
#  gem 'guard-rubocop'
#  gem 'guard-foodcritic'
end

group :integration do
  gem 'test-kitchen', '~> 1.0'
  gem 'kitchen-ansible'
  gem 'kitchen-vagrant'
  gem 'kitchen-sharedtests', '~> 0.2.0'
end

group :openstack do
  gem 'kitchen-openstack'
end

group :tools do
  gem 'github_changelog_generator', '~> 1'
end

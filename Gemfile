# encoding: utf-8

source 'https://rubygems.org'

if Gem::Version.new(RUBY_VERSION) < Gem::Version.new('2.2.2')
  gem 'rack', '< 2.0'
  gem 'ruby_dep', '< 1.4.0'
  gem 'listen', '< 3.0.0'
end

group :test do
  gem 'rake'
  gem 'foodcritic', '~> 4.0'
  gem 'thor-foodcritic'
  gem 'coveralls',  require: false
end

group :development do
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-kitchen'
end

group :integration do
  gem 'test-kitchen', '~> 1.0'
  gem 'kitchen-ansible'
  gem 'kitchen-vagrant'
  gem 'kitchen-inspec'
  gem 'kitchen-sharedtests', '~> 0.2.0'
  gem 'kitchen-sync'
  gem 'kitchen-transport-rsync'
  gem 'kitchen-docker'
end

group :openstack do
  gem 'kitchen-openstack'
end

group :tools do
  gem 'github_changelog_generator', '~> 1'
end

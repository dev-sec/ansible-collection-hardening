#!/usr/bin/env rake
# encoding: utf-8

require 'foodcritic'
require 'rspec/core/rake_task'

# Rubocop before rspec so we don't lint vendored cookbooks
desc 'Run all tests except Kitchen (default task)'
task default: [:integration]

# Automatically generate a changelog for this project. Only loaded if
# the necessary gem is installed.
begin
  require 'github_changelog_generator/task'
  GitHubChangelogGenerator::RakeTask.new :changelog
rescue LoadError
  puts '>>>>> GitHub Changelog Generator not loaded, omitting tasks'
end

desc 'Run integration tests'
task :integration do
  concurrency = ENV['CONCURRENCY'] || 1
  os = ENV['OS'] || ''
  sh('sh', '-c', "bundle exec kitchen test -c #{concurrency} #{os}")
end

#!/usr/bin/env rake
# encoding: utf-8

# Automatically generate a changelog for this project. Only loaded if
# the necessary gem is installed.
begin
  require 'github_changelog_generator/task'
  GitHubChangelogGenerator::RakeTask.new :changelog
rescue LoadError
  puts '>>>>> GitHub Changelog Generator not loaded, omitting tasks'
end

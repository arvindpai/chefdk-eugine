# encoding: UTF-8

require 'bundler/gem_tasks'
require 'rubocop/rake_task'
require 'foodcritic'
require 'rspec/core/rake_task'

RuboCop::RakeTask.new do |rubocop|
  rubocop.options = ['-D']
end

FoodCritic::Rake::LintTask.new do |foodcritic|
  foodcritic.options[:fail_tags] = %w(any)
end

RSpec::Core::RakeTask.new

desc 'Run Rubocop and Foodcritic style checks'
task style: [:rubocop, :foodcritic]

desc 'Run all style checks and unit tests'
task test: [:style, :spec]

task default: :test
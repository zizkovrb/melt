require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
end

if RUBY_PLATFORM =~ /java/
  require 'rake/javaextensiontask'
  Rake::JavaExtensionTask.new('melt') do |ext|
    ext.lib_dir = "lib/melt"
  end
else
  require "rake/extensiontask"
  Rake::ExtensionTask.new("melt") do |ext|
    ext.lib_dir = "lib/melt"
  end
end

task :default => [:clean, :build, :test]
task :build => :compile

namespace :ci do
  task :test => [:default, :install]
end

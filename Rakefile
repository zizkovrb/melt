require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
end

task :default => [:clean, :build, :test]

require "rake/extensiontask"

task :build => :compile

Rake::ExtensionTask.new("melt") do |ext|
  ext.lib_dir = "lib/melt"
end

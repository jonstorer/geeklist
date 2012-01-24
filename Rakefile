require "bundler/gem_tasks"

$:.push File.expand_path("../lib", __FILE__)
require "geeklist/version"

require "bundler/gem_tasks"
require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = Geeklist::VERSION

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "geeklist #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

task :default => [:test]

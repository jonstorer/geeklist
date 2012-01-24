# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "geeklist/version"

Gem::Specification.new do |s|
  s.name        = "geeklist"
  s.version     = Geeklist::VERSION
  s.authors     = ["Jonathon Storer"]
  s.email       = ["jonathon.scott.storer@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "geeklist"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency("oauth")
  s.add_development_dependency('shoulda')
  s.add_development_dependency('rake')
  s.add_development_dependency('mocha')
  s.add_development_dependency('fakeweb')
end

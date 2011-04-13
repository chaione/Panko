# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "panko/version"

Gem::Specification.new do |s|
  s.name        = "panko"
  s.version     = Panko::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Scott Burton - ChaiONE"]
  s.email       = ["scott.burton@chaione.com"]
  s.homepage    = "http://www.chaione.com"
  s.summary     = %q{Crunchy breadcrumbing}
  s.description = %q{Easily add breadcrumbs to your Ruby project.}

  s.rubyforge_project = "panko"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency "actionpack", "~> 3.0.0"
end

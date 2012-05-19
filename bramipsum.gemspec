# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bramipsum/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Claudio Ortolina"]
  gem.email         = ["claudio@jumpzero.com"]
  gem.description   = %q{Random sentences from Bram Stoker's Dracula}
  gem.summary       = %q{Generate one or more dummy sentences taken from Bram Stoker's Dracula}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "bramipsum"
  gem.require_paths = ["lib"]
  gem.version       = Bramipsum::VERSION
  gem.add_development_dependency 'rake', '>= 0.9.2'
end

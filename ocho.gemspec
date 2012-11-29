# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ocho/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["andrea longhi"]
  gem.email         = ["andrea@spaghetticode.it"]
  gem.description   = %q{Reads a file, guesses the charset and converts to utf-8}
  gem.summary       = %q{Reads a file, guesses the charset and converts to utf-8}
  gem.homepage      = "https://github.com/spaghetticode/ocho.git"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ocho"
  gem.require_paths = ["lib"]
  gem.version       = Ocho::VERSION

  gem.add_dependency 'rake'
  gem.add_dependency 'iconv'
  gem.add_dependency 'rchardet'
  gem.add_dependency 'activesupport'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'guard-rspec'
end

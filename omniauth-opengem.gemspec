 # -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-opengem/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["R Odili"]
  gem.email         = ["janesmit@airmail.cc"]
  gem.description   = "Omniauth Strategy for Opengem.org"
  gem.summary       = "Omniauth Strategy for Opengem.org"
  gem.homepage      = "https://github.com/odilitime/omniauth-opengem"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-opengem"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Opengem::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency "rspec", "~> 2.7"
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end

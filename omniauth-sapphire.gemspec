 # -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-sapphire/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["R Odili"]
  gem.email         = ["janesmit@airmail.cc"]
  gem.description   = "Omniauth Strategy for Sapphire.moe"
  gem.summary       = "Omniauth Strategy for Sapphire.moe"
  gem.homepage      = "https://github.com/odilitime/omniauth-sapphire"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-sapphire"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Sapphire::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency "rspec", "~> 2.7"
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end

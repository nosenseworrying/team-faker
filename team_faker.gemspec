# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'team_faker/version'

Gem::Specification.new do |gem|
  gem.name          = "team_faker"
  gem.version       = TeamFaker::VERSION
  gem.authors       = ["Matt Augustine"]
  gem.email         = ["nosenseworrying@gmail.com"]
  gem.description   = "Generates fake team names"
  gem.summary       = "An addon to Faker to generate fake team names"
  gem.homepage      = "https://github.com/nosenseworrying/team-faker"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec", "~> 0"
  gem.add_development_dependency "bundler", "~> 1.5"
  gem.add_development_dependency "rake", "~> 0"
  gem.add_dependency "ffaker", "~> 1"
end

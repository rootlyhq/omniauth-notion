# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-notion/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-notion"
  gem.version       = Omniauth::Notion::VERSION
  gem.authors       = ["Jeremiah Church"]
  gem.email         = ["jeremiahchurch@gmail.com"]
  gem.description   = %q{OmniAuth strategy for Notion using OAuth2}
  gem.summary       = %q{OmniAuth strategy for Notion using OAuth2}
  gem.license       = 'MIT'
  gem.homepage      = "https://github.com/jeremiahchurch/omniauth-notion"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3"

  gem.add_dependency 'omniauth', '~> 2.0.0'
  gem.add_dependency 'omniauth-oauth2', '>= 1.4.0', '< 2.0'
  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end

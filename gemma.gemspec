# frozen_string_literal: true

require_relative 'lib/gemma/version'

Gem::Specification.new do |spec|
  spec.name          = 'gemma'
  spec.version       = Gemma::VERSION
  spec.authors       = ['Emma A. A. Rünzel', 'Josh M. Smith']
  spec.email         = ['emma@ruenzel.de']
  
  spec.summary       = 'Automates synchronization of locale YAML files for Rails apps'
  spec.description   = 'Gemma simplifies the internationalization workflow in Rails applications by automatically synchronizing missing keys across different locale YAML files, using a designated base locale as the reference.'
  spec.homepage      = 'https://github.com/emmvs/gemma'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'
  
  spec.metadata['allowed_push_host'] = 'https://rubygems.org' # Update this to the URL of your preferred gem hosting service if not using RubyGems.
  
  spec.metadata['homepage_uri']   = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri']   = 'https://github.com/emmvs/gemma/blob/main/CHANGELOG.md'
  
  # Specify which files should be added to the gem when it is released.
  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(bin|test|spec|features|\.git|\.github|appveyor|Gemfile)\b}) }
  spec.bindir = 'bin'
  spec.executables = ['gemma']
  # spec.executables   = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment and adjust to add dependencies
  # spec.add_dependency 'rails', '~> 6.0'
  # spec.add_development_dependency 'rspec', '~> 3.0'
end

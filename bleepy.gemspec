# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bleepy/version'

Gem::Specification.new do |spec|
  spec.name          = 'bleepy'
  spec.version       = Bleepy::VERSION
  spec.authors       = ['Rodrigo Machado']
  spec.email         = ['rodmac98@gmail.com']
  spec.summary       = %q{Ruby interface for the take.net API.}
  spec.description   = %q{Bleeply is a ruby interface for the take.net RESTFUL API.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = 'git ls-files -z'.split('\x0')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '3.3.0'
  spec.add_development_dependency 'webmock', '1.21.0'

  spec.add_dependency 'faraday', '0.9.1'
  spec.add_dependency 'faraday_middleware'
  spec.add_dependency 'simple_oauth'

end

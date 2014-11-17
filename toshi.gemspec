# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'toshi/version'

Gem::Specification.new do |spec|
  spec.name          = "toshi"
  spec.version       = Toshi::VERSION
  spec.authors       = ["coinbase"]
  spec.email         = ["toshi@coinbase.com"]
  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rake'
  spec.add_dependency 'bitcoin-ruby' #, github: 'lian/bitcoin-ruby', require: 'bitcoin'
  spec.add_dependency 'eventmachine'
  spec.add_dependency 'sequel_pg'
  spec.add_dependency 'sidekiq'
  spec.add_dependency 'sinatra' #, require: 'sinatra/base'
  spec.add_dependency 'sinatra-contrib'
  spec.add_dependency 'faye-websocket'
  spec.add_dependency 'scrypt'
  spec.add_dependency 'builder'

  spec.add_development_dependency "bundler", "~> 1.7"
end

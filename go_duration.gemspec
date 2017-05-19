# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'go_duration/version'

Gem::Specification.new do |spec|
  spec.name          = "go_duration"
  spec.version       = GoDuration::VERSION
  spec.authors       = ["Justin Campbell"]
  spec.email         = ["justin@justincampbell.me"]

  spec.summary       = "Go's time.Duration parsing/serialization for Ruby"
  spec.homepage      = "https://github.com/justincampbell/go-duration"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rake", "~> 10.0"
end

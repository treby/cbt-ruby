# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cbt/version'

Gem::Specification.new do |spec|
  spec.name          = 'cbt'
  spec.version       = Cbt::VERSION
  spec.authors       = ['Hiroaki Ninomiya']
  spec.email         = ['me@treby.info']

  spec.summary       = %q{CrossBrowserTesting(CBT) API v3 client library, written in ruby.}
  spec.description   = %q{CrossBrowserTesting(CBT) API v3 client library, written in ruby.}
  spec.homepage      = 'https://github.com/treby/cbt-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3'

  spec.add_runtime_dependency 'faraday'
  spec.add_runtime_dependency 'faraday_middleware'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
end

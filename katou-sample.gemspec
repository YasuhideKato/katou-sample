# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'katou/sample/version'

Gem::Specification.new do |spec|
  spec.name          = "katou-sample"
  spec.version       = Katou::Sample::VERSION
  spec.authors       = ["YasuhideKato"]
  spec.email         = ["ya.katou@ntt.com"]

  spec.summary       = %q{test}
  spec.description   = %q{test}
  spec.homepage      = "https://github.com/YasuhideKato/katou-sample"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

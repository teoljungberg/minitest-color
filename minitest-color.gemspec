# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "minitest-color"
  spec.version       = "0.0.2"
  spec.authors       = ["Teo Ljungberg"]
  spec.email         = ["teo@teoljungberg.com"]
  spec.summary       = "Color formatter for Minitest"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/teoljungberg/minitest-color"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "minitest", "~> 5"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end

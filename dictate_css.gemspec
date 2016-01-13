# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dictate_css/version'

Gem::Specification.new do |spec|
  spec.name          = "dictate_css"
  spec.version       = DictateCss::VERSION
  spec.authors       = ["Miles Stanfield"]
  spec.email         = ["milesstanfield@gmail.com"]

  spec.summary       = %q{An intuitive and very DRY CSS framework that lets you dictate styling with classes 'named-for-what-they-do'.}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/milesstanfield/dictate_css"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "capybara", "> 2.3.0"
  spec.add_development_dependency "capybara-webkit", "~> 1.1.0"
  spec.add_development_dependency "generator_spec"
end

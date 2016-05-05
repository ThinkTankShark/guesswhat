# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guesswhat/version'

Gem::Specification.new do |spec|
  spec.name          = "guesswhat"
  spec.version       = Guesswhat::VERSION
  spec.authors       = ["Sepand Assadi"]
  spec.email         = ["info@sepandassadi.com"]

  spec.summary       = %q{Fake a new image}
  spec.description   = %q{Create a new image based on the item category}
  spec.homepage      = "https://github.com/ThinkTankShark/guesswhat.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'rest-client', '~> 1.8'
  spec.add_development_dependency 'nokogiri', '~> 1.6', '>= 1.6.7.2'

end

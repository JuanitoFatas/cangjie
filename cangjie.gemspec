# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cangjie/version"

Gem::Specification.new do |spec|
  spec.name          = "cangjie"
  spec.version       = Cangjie::VERSION
  spec.authors       = ["JuanitoFatas"]
  spec.email         = ["katehuang0320@gmail.com"]

  spec.summary       = "Cangjie invented Chinese characters. I invite him to help us recognize Chinese in RubyGems world."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/JuanitoFatas/cangjie"
  spec.license       = "UNLICENSE"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

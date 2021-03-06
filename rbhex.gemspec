# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbhex/version'

Gem::Specification.new do |spec|
  spec.name          = "rbhex"
  spec.version       = Rbhex::VERSION
  spec.authors       = ["Chris Arcand"]
  spec.email         = ["chris@chrisarcand.com"]
  spec.summary       = %q{A toolkit for building ncurses applications for text terminals in Ruby.}
  spec.description   = %q{rbhex is a toolkit for building ncurses applications for text terminals in Ruby. This is the meta-gem for rbhex.}
  spec.homepage      = "https://github.com/ChrisArcand/rbhex"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3"

  %w[core layouts].each do |name|
    if Rbhex::VERSION =~ /[a-zA-Z]+/
      spec.add_runtime_dependency "rbhex-#{name}", "= #{Rbhex::VERSION}"
    else
      spec.add_runtime_dependency "rbhex-#{name}", "~> #{Rbhex::VERSION.split('.')[0..1].concat(['0']).join('.')}"
    end
  end
end

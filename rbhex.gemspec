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
  spec.add_development_dependency "rake"

  %w[core].each do |name|
    if Rbhex::Version =~ /[a-zA-Z]+/
      s.add_runtime_dependency "rspec-#{name}", "= #{Rbhex::Version}"
    else
      s.add_runtime_dependency "rspec-#{name}", "~> #{Rbhex::Version.split('.')[0..1].concat(['0']).join('.')}"
    end
  end
end

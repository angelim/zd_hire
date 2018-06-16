# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zd_hire/version'

Gem::Specification.new do |spec|
  spec.name          = "zd_hire"
  spec.version       = ZdHire::VERSION
  spec.authors       = ["Alexandre Angelim"]
  spec.email         = ["angelim@angelim.com.br"]

  spec.summary       = %q{Code Challenges made easy}
  spec.description   = %q{Recruit using Gitub}
  spec.homepage      = "http://github.com/angelim/zd_hire"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["zd_hire"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'commander', '~> 4.4', '>= 4.4.3'
  spec.add_runtime_dependency 'octokit', '~> 4.9', '>= 4.9.0'
  
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

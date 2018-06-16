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

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

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

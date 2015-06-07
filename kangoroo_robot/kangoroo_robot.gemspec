# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kangoroo_robot/version'

Gem::Specification.new do |spec|
  spec.name          = "kangoroo_robot"
  spec.version       = KangorooRobot::VERSION
  spec.authors       = ["Herve Tatche"]
  spec.email         = ["herve.tatche@gmail.com"]

  spec.summary       = %q{Coding exercise for Lookahead}
  spec.description   = %q{Robot game controlled by giving him commands through the STDIN}
  spec.homepage      = "https://github.com/htatche/kangoroo_robot"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  # end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end


lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kado_viewer/version"

Gem::Specification.new do |spec|
  spec.name          = "kado_viewer"
  spec.version       = KadoViewer::VERSION
  spec.authors       = ["kadenjenson"]
  spec.email         = ["sobeit99@gmail.com"]

  spec.summary       = %q{Various view methods I use for applications}
  spec.description   = %q{Provides generated HTML data for Rails applications}
  spec.homepage      = "https://github.com/kadenjenson/devcamp-portfolio"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

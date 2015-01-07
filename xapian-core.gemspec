# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xapian/core/version'

Gem::Specification.new do |spec|
	spec.name          = "xapian-core"
	spec.version       = Xapian::Core::VERSION
	spec.authors       = ["Samuel Williams"]
	spec.email         = ["samuel.williams@oriontransfer.co.nz"]
	spec.summary       = %q{Provides Xapian libraries and Ruby bindings.}
	spec.homepage      = ""
	spec.license       = "GPLv3"

	spec.files         = `git ls-files -z`.split("\x0")
	spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
	spec.require_paths = ["lib"]

	spec.extensions << "ext/Rakefile"

	spec.add_development_dependency "bundler", "~> 1.6"
	spec.add_development_dependency "rake"
end

# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pspdfkit/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tom Meinlschmidt"]
  gem.email         = ["tom@meinlschmidt.org"]
  gem.description   = %q{Integrating PSPDFKit into your application}
  gem.summary       = %q{Integrating PSPDFKit into your application}
  gem.homepage      = "http://github.com/tmeinlschmidt/rm-pspdfkit"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pspdfkit"
  gem.require_paths = ["lib"]
  gem.version       = Pspdfkit::VERSION
end

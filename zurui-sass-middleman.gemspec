# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zurui-sass-middleman/version'

Gem::Specification.new do |gem|
  gem.name          = "zurui-sass-middleman"
  gem.version       = ZuruiSass::Middleman::VERSION
  gem.authors       = ["mah_lab"]
  gem.email         = ["rootmoon@gmail.com"]
  gem.description   = %q{Sass mixins by zurui-design(https://speakerdeck.com/ken_c_lo/zurui-design)}
  gem.summary       = %q{Sass mixins by zurui-design(https://speakerdeck.com/ken_c_lo/zurui-design)}
  gem.homepage      = "http://blog.mah-lab.com/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency(%q<middleman>,           [">= 3.0.0"])

  gem.add_development_dependency(%q<bundler>,         ["~> 1.1"])
  gem.add_development_dependency(%q<rspec>,           ["~> 2.6.0"])
end

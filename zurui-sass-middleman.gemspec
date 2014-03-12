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
  gem.homepage      = "https://github.com/mahm/zurui-sass-middleman"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency(%q<middleman>,           [">= 3.0.0"])

  gem.add_development_dependency(%q<bundler>,         ["~> 1.1"])
  gem.add_development_dependency(%q<rspec>,           ["~> 2.6.0"])

  # get an array of submodule dirs by executing 'pwd' inside each submodule
  `git submodule --quiet foreach pwd`.split($\).each do |submodule_path|
    # for each submodule, change working directory to that submodule
    Dir.chdir(submodule_path) do

      # issue git ls-files in submodule's directory
      submodule_files = `git ls-files`.split($\)

      # prepend the submodule path to create absolute file paths
      submodule_files_fullpaths = submodule_files.map do |filename|
        "#{submodule_path}/#{filename}"
      end

      # remove leading path parts to get paths relative to the gem's root dir
      # (this assumes, that the gemspec resides in the gem's root dir)
      submodule_files_paths = submodule_files_fullpaths.map do |filename|
        filename.gsub "#{File.dirname(__FILE__)}/", ""
      end

      # add relative paths to gem.files
      gem.files += submodule_files_paths
    end
  end
end

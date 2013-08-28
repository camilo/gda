
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gda/version'
require 'rake'

Gem::Specification.new do |gem|
  gem.name      = 'gda'
  gem.version   = GDA::VERSION
  gem.license   = 'MIT'
  gem.summary     = "Gnome libgda wrapper"
  gem.description = <<DESC;
             GDA wraps the Gnome Project's Data Access Library (libgda) in Ruby
DESC
  gem.authors     = ['Aaron Paterson', 'Nick Townsend']
  gem.email       = ['tenderlove@ruby-lang.org',
                     'nick.townsend@mac.com']
  gem.required_ruby_version = '>=1.9.3'
  gem.files  =  FileList['lib/**/*.rb','ext/**/*.{c,h,rb}','test/*'].to_a
  gem.extensions  << 'ext/gda/extconf.rb'
  gem.test_files  = FileList['test/*'].to_a
  gem.homepage    = 'https://github.com/townsen/gda'
  gem.extra_rdoc_files = ['README.rdoc','CHANGELOG.rdoc']
  gem.add_development_dependency "rspec", [">= 2.11"]
  gem.add_development_dependency "sqlite3"
  gem.require_paths = ['lib', 'ext']
  gem.requirements = 'libgda, 5.1 or greater'
  gem.has_rdoc  = true
end


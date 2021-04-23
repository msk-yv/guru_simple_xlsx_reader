# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guru_simple_xlsx_reader/version'

Gem::Specification.new do |gem|
  gem.name          = "guru_simple_xlsx_reader"
  gem.version       = GuruSimpleXlsxReader::VERSION
  gem.authors       = ["Woody Peterson", "Ndfl_Guru_Team"]
  gem.email         = ["woody.peterson@gmail.com", "dev@ndfl.guru"]
  gem.description   = %q{Read xlsx data the Ruby way}
  gem.summary       = %q{Read xlsx data the Ruby way}
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.add_dependency 'nokogiri'
  gem.add_dependency 'rubyzip'

  gem.add_development_dependency 'minitest', '>= 5.0'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'pry'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^test/})
  gem.require_paths = ["lib"]
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "solidus_variant_options/version"

Gem::Specification.new do |s|
  s.name        = "solidus_variant_options"
  s.version     = SolidusVariantOptions::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = "Noel Diaz"
  s.email       = "noel@2bedigital.com"
  s.homepage    = "https://github.com/2beDigital/solidus_variant_options"
  s.summary     = %q{Solidus Variant Options is a simple spree extension that replaces the radio-button variant selection with groups of option types and values.}
  s.description = %q{Solidus Variant Options is a simple spree extension that replaces the radio-button variant selection with groups of option types and values. Please see the documentation for more details.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Runtime
  solidus_version= '~> 2.2'
  s.add_dependency 'solidus_api', solidus_version
  s.add_dependency 'solidus_core', solidus_version
  s.add_dependency 'solidus_frontend', solidus_version
  s.add_dependency 'solidus_backend', solidus_version

  # Development
  s.add_development_dependency('spree_sample')
  s.add_development_dependency('dummier')
  s.add_development_dependency('shoulda')
  s.add_development_dependency('shoulda-context')
  s.add_development_dependency('shoulda-matchers')
  s.add_development_dependency('m')
  s.add_development_dependency('ffaker')
  s.add_development_dependency('factory_girl_rails')
  s.add_development_dependency('cucumber-rails')
  s.add_development_dependency('database_cleaner')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('coffee-rails')
  s.add_development_dependency('capybara')
  s.add_development_dependency('poltergeist')
  s.add_development_dependency('launchy')
  s.add_development_dependency("sprockets")
end

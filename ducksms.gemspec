# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "ducksms/version"

Gem::Specification.new do |s|
  s.name        = "ducksms"
  s.version     = Ducksms::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ducksms"]
  s.email       = ["support@ducksms.com"]
  s.homepage    = "https://ducksms.com"
  s.summary     = "The API allow you to directly communicate and manage a SMS with our SMS gateway system."
  s.description = "Ducksms is a leading SMS messaging service provider offering one-way SMS communication services from your internet enabled computer."
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.6.0"

  s.metadata = {
    "bug_tracker_uri"   => "https://github.com/ducksms/ducksms-ruby/issues",
    "source_code_uri"   => "https://github.com/ducksms/ducksms-ruby"
  }

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'
  s.add_runtime_dependency 'link-header-parser', '~> 4.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end

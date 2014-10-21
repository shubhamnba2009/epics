# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'epics/version'

Gem::Specification.new do |spec|
  spec.name          = "epics"
  spec.version       = Epics::VERSION
  spec.authors       = ["Lars Brillert"]
  spec.email         = ["lars@railslove.com"]
  spec.summary       = %q{a ruby implementation of the EBICS protocol}
  spec.description   = <<-description
    Epics is a ruby implementation of the EBIC standard (H004)

    It supports the complete initialization process comprising INI, HIA and HPB
    including the INI letter generation.

    Furthermore it offers support for the most common download types:
      STA HAA HTD HPD PKT

    And the following upload orders:
      CD1 CDD CCT
  description

  spec.homepage      = "https://github.com/railslove/epics"
  spec.license       = "LGPL-3.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri"
  spec.add_dependency "gyoku"
  spec.add_dependency "faraday"

  spec.add_development_dependency "bundler", ">= 1.6.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "equivalent-xml"
end

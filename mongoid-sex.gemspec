# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid-sex/version"

Gem::Specification.new do |s|
  s.name        = "mongoid-sex"
  s.version     = Mongoid::Sex::VERSION
  s.authors     = ["ryanlower"]
  s.email       = ["rpjlower@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "mongoid-sex"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency('mongoid', '~> 2.0')
end

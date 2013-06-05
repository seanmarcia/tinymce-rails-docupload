# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "tinymce-rails-docupload/version"

Gem::Specification.new do |s|
  s.name        = "tinymce-rails-docupload"
  s.version     = Tinymce::Rails::Docupload::VERSION
  s.authors     = ["Sean Marcia"]
  s.email       = ["chssweb@gmu.edu"]
  s.homepage    = "chss.gmu.edu"
  s.summary     = %q{TinyMCE plugin for taking document uploads in Rails >= 3.1}
  s.description = %q{TinyMCE plugin for taking document uploads in Rails >= 3.1}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency     "railties",      ">= 3.1"
  s.add_runtime_dependency     "tinymce-rails", ">= 3.4.9"
  s.add_development_dependency "bundler",       "~> 1.0.0"
  s.add_development_dependency "rails",         ">= 3.1"
end

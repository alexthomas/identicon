$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "identicon/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "identicon"
  s.version     = Identicon::VERSION
  s.authors     = ["Alex Thomas"]
  s.email       = ["alex.c.thomas@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of Identicon."
  s.description = "Description of Identicon."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec", "~> 3.3.0"
  s.add_dependency "chunky_png", "~> 1.3.0"
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cama_external_menu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cama_external_menu"
  s.version     = CamaExternalMenu::VERSION
  s.authors     = ["Owen Peredo"]
  s.email       = ["owenperedo@gmail.com"]
  s.homepage    = ""
  s.summary     = "Permissions For External Menus"
  s.description = "This plugin permit to administrators to indicate which kind of users can see external menus."
  s.license     = "MIT"
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.add_dependency "rails"
  s.add_development_dependency "sqlite3"
end

require_relative "lib/lalo/item_picker/version"

Gem::Specification.new do |spec|
  spec.name        = "lalo-item_picker"
  spec.version     = Lalo::ItemPicker::VERSION
  spec.authors     = ["Juan Vasquez"]
  spec.email       = ["me@juanvasquez.dev"]
  spec.homepage    = "https://github.com/JuanVqz/lalo-item_picker"
  spec.summary     = "This engine is supposed to collect some items"
  spec.description = "This engine is supposed to collect some items to make some maths on them and have a total, state, etc."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4.2"
end

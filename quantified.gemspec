lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'quantified/version'

Gem::Specification.new do |s|
  s.name        = "quantified"
  s.version     = Quantified::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["James MacAulay", "Willem van Bergen"]
  s.email       = ["james@shopify.com"]
  s.homepage    = "https://github.com/Shopify/quantified"
  s.summary     = "Pretty quantifiable measurements which feel like ActiveSupport::Duration."
  s.description = "Pretty quantifiable measurements which feel like ActiveSupport::Duration."

  s.add_runtime_dependency('activesupport', '>= 3.2')

  s.add_development_dependency('rake')
  s.add_development_dependency('test-unit')

  s.files        = Dir.glob("lib/**/*") + %w(MIT-LICENSE README.md)
  s.require_path = 'lib'
end

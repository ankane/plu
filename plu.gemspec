require_relative "lib/plu/version"

Gem::Specification.new do |spec|
  spec.name          = "plu"
  spec.version       = PLU::VERSION
  spec.summary       = "Price look-up codes made easy"
  spec.homepage      = "https://github.com/ankane/plu"
  spec.license       = "MIT"

  spec.author        = "Andrew Kane"
  spec.email         = "andrew@chartkick.com"

  spec.files         = Dir["*.{md,txt,csv}", "{lib}/**/*"]
  spec.require_path  = "lib"

  spec.required_ruby_version = ">= 2.4"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end

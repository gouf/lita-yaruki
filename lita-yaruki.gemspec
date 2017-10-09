Gem::Specification.new do |spec|
  spec.name          = "lita-yaruki"
  spec.version       = "0.1.0"
  spec.authors       = ["gouf"]
  spec.email         = ["innocent.zero@gmail.com"]
  spec.description   = "detect yaruki by shindanmaker"
  spec.summary       = "scrape shindanmaker content"
  spec.homepage      = "https://github.com/gouf/lita-yaruki"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.7"
  spec.add_runtime_dependency 'slack-ruby-client'
  spec.add_runtime_dependency 'shindan'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end

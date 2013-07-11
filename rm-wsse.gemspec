require File.expand_path('../lib/rm-wsse/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Naoya Ito"]
  gem.email         = ["i.naoya@gmail.com"]
  gem.description   = %q{Creates WSSE authentication header}
  gem.summary       = %q{Creates WSSE authentication header}
  gem.homepage      = "https://github.com/naoya/rm-wsse"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rm-wsse"
  gem.require_paths = ["lib"]

  gem.version       = RmWsse::VERSION

  gem.add_development_dependency "rake"
  gem.add_development_dependency "guard-motion"

  gem.add_runtime_dependency "rm-digest"
end

require_relative 'lib/muffins/buttercream/version'

Gem::Specification.new do |spec|
  spec.name          = 'muffins-buttercream'
  spec.version       = Muffins::Buttercream::VERSION
  spec.authors       = ['Stefanie Böhme', 'Tobias Bühlmann']
  spec.email         = ['s.boehme@thisisdmg.com', 't.buehlmann@thisisdmg.com']
  spec.summary       = 'Adds the Buttercream Muffins Theme to your Rails Application.'
  spec.homepage      = 'https://github.com/thisisdmg/muffins-buttercream'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'railties', '~> 4.1'
  spec.add_runtime_dependency 'sass-rails', '~> 4.0'
  spec.add_runtime_dependency 'compass-rails', '~> 1.1'

  spec.add_development_dependency 'bundler', '~> 1.6'
end

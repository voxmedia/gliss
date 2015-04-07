require './lib/gliss'

Gem::Specification.new do |s|
  s.name        = 'gliss-layout'
  s.version     = Gliss::VERSION
  s.date        = Gliss::DATE
  s.authors     = ['Scott Kellum']
  s.email       = ['scott@scottkellum.com']
  s.homepage    = 'http://product.voxmedia.com'
  s.license     = 'MIT'

  s.summary     = 'gliss tk tk tk.'
  s.description = 'gliss tk tk tk.'

  s.files       = Dir['lib/**/*'] + Dir['stylesheets/**/*']
  s.extra_rdoc_files = ['changelog.md', 'license.md', 'readme.md']

  s.required_rubygems_version = '>= 1.3.6'

  s.add_runtime_dependency 'compass', '>= 0.12.0'
end

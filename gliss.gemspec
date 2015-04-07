require './lib/gliss'

Gem::Specification.new do |s|
  s.name        = 'gliss-layout'
  s.version     = Gliss::VERSION
  s.date        = Gliss::DATE
  s.authors     = ['Scott Kellum']
  s.email       = ['scott@scottkellum.com']
  s.homepage    = 'http://product.voxmedia.com'
  s.license     = 'MIT'

  s.summary     = 'A constraint based responsive grid system.'
  s.description = 'Gliss is a system that uses max-width and width to allow elements to fall on different grids at different sizes instead of more traditional media queries. This allows elements to fluidly change their size instead of snapping to a new grid system at various breakpoints.'

  s.files       = Dir['lib/**/*'] + Dir['stylesheets/**/*']
  s.extra_rdoc_files = ['changelog.md', 'license.md', 'readme.md']

  s.required_rubygems_version = '>= 1.3.6'

  s.add_runtime_dependency 'compass', '>= 0.12.0'
end

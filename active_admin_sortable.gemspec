# -*- encoding: utf-8 -*-
require File.expand_path('../lib/active_admin_sortable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kevin Horst"]
  gem.email         = ["krhorst@gmail.com"]
  gem.description   = "Drag and drop sorting for Active Admin Collections"
  gem.summary       = ""
  gem.homepage      = "http://github.com/krhorst/active_admin_sortable"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "active_admin_sortable"
  gem.require_paths = ["lib"]
  gem.version       = ActiveAdminSortable::VERSION
end

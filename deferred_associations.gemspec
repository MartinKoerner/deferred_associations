# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = 'deferred_associations'
  s.version = '0.6.5'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.authors = ['Martin Koerner', 'Tyler Rick', 'Alessio Caiazza']
  s.date = '2017-12-23'
  s.description = "Makes ActiveRecord defer/postpone saving the records you add to an habtm (has_and_belongs_to_many) or has_many\n                       association until you call model.save, allowing validation in the style of normal attributes. Additionally you\n                       can check inside before_save filters, if the association was altered."
  s.email = 'martin.koerner@objectfab.de'
  s.licenses = 'MIT'
  s.extra_rdoc_files = [
    'CHANGELOG',
    'Readme.markdown'
  ]
  s.files = [
    'CHANGELOG',
    'Readme.markdown',
    'VERSION',
    'deferred_associations.gemspec',
    'init.rb',
    'bin/run_all_specs',
    'lib/array_to_association_wrapper.rb',
    'lib/deferred_associations.rb',
    'lib/has_and_belongs_to_many_with_deferred_save.rb',
    'lib/has_many_with_deferred_save.rb',
    'spec/db/database.yml',
    'spec/db/schema.rb',
    'spec/habtm_ar4_spec.rb',
    'spec/has_and_belongs_to_many_with_deferred_save_spec.rb',
    'spec/has_many_with_deferred_save_spec.rb',
    'spec/models/chair.rb',
    'spec/models/door.rb',
    'spec/models/person.rb',
    'spec/models/room.rb',
    'spec/models/table.rb',
    'spec/spec_helper.rb'
  ]
  s.homepage = 'http://github.com/MartinKoerner/deferred_associations'
  s.require_paths = ['lib']
  s.rubygems_version = '1.8.24'
  s.summary = 'Makes ActiveRecord defer/postpone habtm or has_many associations'

  if s.respond_to? :specification_version
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0')
      s.add_runtime_dependency('activerecord', ['>= 0'])
      s.add_development_dependency('rspec', ['>= 0'])
    else
      s.add_dependency('activerecord', ['>= 0'])
      s.add_dependency('rspec', ['>= 0'])
    end
  else
    s.add_dependency('activerecord', ['>= 0'])
    s.add_dependency('rspec', ['>= 0'])
  end
end

# -*- encoding: utf-8 -*-
# stub: cucumber-rails 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cucumber-rails".freeze
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aslak Helles\u00F8y".freeze, "Dennis Bl\u00F6te".freeze, "Rob Holland".freeze]
  s.date = "2013-08-23"
  s.description = "Cucumber Generator and Runtime for Rails".freeze
  s.email = "cukes@googlegroups.com".freeze
  s.homepage = "http://cukes.info".freeze
  s.rubygems_version = "3.1.4".freeze
  s.summary = "cucumber-rails-1.4.0".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<cucumber>.freeze, [">= 1.2.0"])
    s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.5.0"])
    s.add_runtime_dependency(%q<capybara>.freeze, [">= 1.1.2"])
    s.add_runtime_dependency(%q<rails>.freeze, [">= 3.0.0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0.9.2.2"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3.5"])
    s.add_development_dependency(%q<aruba>.freeze, [">= 0.4.11"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 2.2"])
    s.add_development_dependency(%q<ammeter>.freeze, [">= 0.2.9"])
    s.add_development_dependency(%q<factory_girl>.freeze, [">= 3.2.0"])
    s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0.7.2"])
    s.add_development_dependency(%q<appraisal>.freeze, ["~> 0.5.1"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.8.5.2"])
    s.add_development_dependency(%q<rdoc>.freeze, ["~> 3.12.2"])
    s.add_development_dependency(%q<rdiscount>.freeze, ["~> 2.0.7"])
    s.add_development_dependency(%q<bcat>.freeze, ["~> 0.6.2"])
  else
    s.add_dependency(%q<cucumber>.freeze, [">= 1.2.0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 1.5.0"])
    s.add_dependency(%q<capybara>.freeze, [">= 1.1.2"])
    s.add_dependency(%q<rails>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0.9.2.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3.5"])
    s.add_dependency(%q<aruba>.freeze, [">= 0.4.11"])
    s.add_dependency(%q<rspec>.freeze, [">= 2.2"])
    s.add_dependency(%q<ammeter>.freeze, [">= 0.2.9"])
    s.add_dependency(%q<factory_girl>.freeze, [">= 3.2.0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0.7.2"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 0.5.1"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8.5.2"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 3.12.2"])
    s.add_dependency(%q<rdiscount>.freeze, ["~> 2.0.7"])
    s.add_dependency(%q<bcat>.freeze, ["~> 0.6.2"])
  end
end

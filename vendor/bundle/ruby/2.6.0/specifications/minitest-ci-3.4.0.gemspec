# -*- encoding: utf-8 -*-
# stub: minitest-ci 3.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "minitest-ci".freeze
  s.version = "3.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["zzak".freeze, "bhenderson".freeze, "notnoop".freeze]
  s.date = "2018-01-09"
  s.description = "Minitest Junit XML results that CircleCI can read.".freeze
  s.email = ["sayhi@circleci.com".freeze]
  s.homepage = "https://github.com/circleci/minitest-ci".freeze
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Minitest JUnit XML formatter".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<minitest>.freeze, [">= 5.0.6"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12.0.0"])
    s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.7.1"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 2.4.2"])
    s.add_development_dependency(%q<json>.freeze, [">= 2.0.0"])
    s.add_development_dependency(%q<ZenTest>.freeze, [">= 0"])
  else
    s.add_dependency(%q<minitest>.freeze, [">= 5.0.6"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0.0"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.7.1"])
    s.add_dependency(%q<rdoc>.freeze, [">= 2.4.2"])
    s.add_dependency(%q<json>.freeze, [">= 2.0.0"])
    s.add_dependency(%q<ZenTest>.freeze, [">= 0"])
  end
end

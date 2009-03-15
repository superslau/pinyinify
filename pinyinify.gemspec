# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pinyinify}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["FIXME (who is writing this software)"]
  s.date = %q{2009-03-15}
  s.default_executable = %q{pinyinify}
  s.description = %q{Transliterate from Mandarin to Pinyin}
  s.email = %q{superslau@gmail.com}
  s.executables = ["pinyinify"]
  s.extra_rdoc_files = ["History.txt", "README.txt", "bin/pinyinify"]
  s.files = ["History.txt", "README.txt", "Rakefile", "bin/pinyinify", "data/hanzi.dat", "data/hanzi.yml", "lib/pinyinify.rb", "lib/pinyinify/transliterate/transliterate.rb", "pinyinify.gemspec", "spec/pinyinify/transliterate/transliterate_spec.rb", "spec/pinyinify_spec.rb", "spec/spec_helper.rb", "test/test_pinyinify.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/superslau/pinyinify/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{pinyinify}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Transliterate from Mandarin to Pinyin}
  s.test_files = ["test/test_pinyinify.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 2.4.2"])
    else
      s.add_dependency(%q<bones>, [">= 2.4.2"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.4.2"])
  end
end

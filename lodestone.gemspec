Gem::Specification.new do |s|
  s.name = "lodestone"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jspc"]
  s.date = "2013-02-02"
  s.description = "A DSL to set perms on a dir in a sane way"
  s.summary = s.description
  s.email = "james@zero-internet.org.uk"
  s.homepage = "https://github.com/jspc/lodestone"
  s.executables = ["lodestone"]
  s.extra_rdoc_files = [
    "LICENCE.txt",
    "README.md"
  ]
  s.files = [
    "LICENCE.txt" ,
    "README.md" ,
    "bin/lodestone" ,
    "lib/lodestone.rb" ,
    "lib/grammars/lodestone.rb" ,
   ]
   s.add_dependency( 'treetop', '1.4.12' )

end

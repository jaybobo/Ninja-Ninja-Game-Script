# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", _FILE_)
require "ninjas/version"

Gem::Specification.new do |s|
	s.name			= "ninjas"
	s.version 		= ninjas::VERSION
	s.authors		= ["J Bobo"]
	s.email			= ["info@goodproduce.net"]
	s.homepage		= ""
	s.summary		= %q{TODO: Write a gem summary}
	s.description	= %q{TODO: Write a gem description}
	
	s.rubyforge_project	= "NAME"
	
	s.files			= `git ls-files`.split("\n")
	s.test_files	= `git ls-files -- {test,spec,features}/*`.split("\n)
	s.executables	= `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
	s.require_paths = ["lib"]
end
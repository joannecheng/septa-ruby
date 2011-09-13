# coding: UTF-8

Gem::Specification.new do |s|
  s.name              = "septa"
  s.version           = "1.0.1"
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["Joanne Cheng"]
  s.email             = ["chengjoanne2@gmail.com"]
  s.homepage          = "http://github.com/joannecheng/septa-ruby"
  s.summary           = "Ruby wrapper for the septa api"
  s.description       = "An easier way to access SEPTA (Southeastern Pennsylvania Transit Authority) data."
  s.rubyforge_project = s.name

  s.required_rubygems_version = ">= 1.3.6"
  
  # If you have runtime dependencies, add them here
  # s.add_runtime_dependency "other", "~> 1.2"
  
  # If you have development dependencies, add them here
  # s.add_development_dependency "another", "= 0.9"

  # The list of files to be contained in the gem
  #s.files         = `git ls-files`.split("\n")
  s.files = ['lib/septa.rb', 'lib/septa/bus.rb']
  # s.executables   = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  # s.extensions    = `git ls-files ext/extconf.rb`.split("\n")
  
  s.require_path = 'lib'

  # For C extensions
  # s.extensions = "ext/extconf.rb"
end

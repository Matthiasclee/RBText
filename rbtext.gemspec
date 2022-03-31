require_relative "lib/rbtext.rb"

exe=['ftext']

Gem::Specification.new do |s|
  s.name        = 'rbtext'
  s.version     = RBText.version
  s.summary     = "RBText"
  s.description = "A gem for printing formatted text"
  s.authors     = ["Matthias Lee"]
  s.email       = 'matthias@matthiasclee.com'
  s.files       = [
    "lib/rbtext.rb",
    "lib/rbtext/colors.rb",
    "lib/rbtext/cursor.rb",
    "lib/rbtext/formatting.rb",
    "lib/rbtext/ftext.rb",
    "lib/rbtext/screen.rb"
  ] + exe.map{|i|"bin/#{i}"}
  s.executables = exe
  s.add_runtime_dependency "io-console", '~> 0.5.6'
  s.require_paths = ["lib"]
  s.homepage = 'https://github.com/Matthiasclee/RBText'
  s.license = 'AGPL-3.0'
end

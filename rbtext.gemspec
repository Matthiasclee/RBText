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
    "lib/rbtext/screen.rb",
    "lib/rbtext/string_methods.rb"
  ] + exe.map{|i|"bin/#{i}"}
  s.executables = exe
  s.add_runtime_dependency "io-console", '~> 0.5.6'
  s.add_runtime_dependency "io-wait", '~> 0.3.0'
  s.add_runtime_dependency "argparse", '~> 0.0.3'
  s.require_paths = ["lib"]
  s.homepage = 'https://github.com/Matthiasclee/RBText'
  s.license = 'Nonstandard'
end

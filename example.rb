require 'rbtext'

puts R::Ft.new '_.c:light-blue.__.cb:green._Colored text with background!'

puts R::Ft.new '_.f:italic._Italics! (Not always italic on some systems)'

puts R::Ft.new '_.f:underline._Underlined!'

puts R::Ft.new '_.f:bold._Bold!'

puts R::Ft.new "_.f:faint._Thin!"

print R::C.color :light_blue
print R::C.color :green, type: :bg
print R::F.italic
print R::F.underline
print R::F.bold

puts "Every_.f:faint._thing".to_ftext


puts
puts "I was printed first"
sleep(1)
R::Cr.up 2
print "I was printed second"
R::Cr.down
R::Cr.left 10
sleep(2)
print "I wrote over him"

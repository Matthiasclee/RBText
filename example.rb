require 'rbtext'

puts R::Ft.new '_.c:light-blue.__.cb:green._Colored text with background!'

puts R::Ft.new '_.f:italic._Italics!'

puts R::Ft.new '_.f:blinking._Blinking!'

puts R::Ft.new '_.f:strikethrough._Strikethrough!'

puts R::Ft.new '_.f:underline._Underlined!'

puts R::Ft.new '_.f:bold._Bold!'

puts R::Ft.new '_.f:faint._Thin!'

print R::C.color :light_blue
print R::C.color :green, type: :bg
print R::F.italic
print R::F.underline
print R::F.bold
print R::F.strikethrough
print R::F.blinking

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

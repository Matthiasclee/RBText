require 'rbtext'

puts R::Ft.new '_.c:light-blue.__.cb:green._Colored text with background!'

puts R::Ft.new '_.f:italic._Italics! (Not always italic on some systems)'

puts R::Ft.new '_.f:underline._Underlined!'

puts R::Ft.new '_.f:bold._Bold!'

puts R::Ft.new "_.f:faint._Thin!"


puts
puts "I was printed first"
sleep(1)
R::Cr.up 2
print "I was printed second"
R::Cr.down
R::Cr.left 10
sleep(2)
print "I wrote over him"

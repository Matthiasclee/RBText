module RBText
  module Cursor
    def up(num=1)
      print "\033[#{num.to_i}A"
    end

    def down(num=1)
      print "\033[#{num.to_i}B"
    end

    def left(num=1)
      print "\033[#{num.to_i}D"
    end

    def right(num=1)
      print "\033[#{num.to_i}C"
    end

    def beginning_of_line
      print "\r"
    end

    module_function :up, :down, :left, :right, :beginning_of_line
  end

  module Cr
    include RBText::Cursor
    module_function :up, :down, :left, :right, :beginning_of_line
  end
end

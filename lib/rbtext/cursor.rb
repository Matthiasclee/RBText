module RBText
  module Cursor
    @@methods = [
      :up,
      :down,
      :left,
      :right,
      :beginning_of_line,
      :go_to_pos,
      :pos,
      :show,
      :hide
    ]

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

    def go_to_pos(x, y=nil)
      if x.class == Array && !y
        y = x[1]
        x = x[0]
      end

      print "\033[#{y};#{x}H"
      print "\033[#{y};#{x}f"
    end

    def pos
      res = ''
      $stdin.raw do |stdin|
        $stdout << "\e[6n"
        $stdout.flush
        while (c = stdin.getc) != 'R'
          res << c if c
        end
      end
      m = res.match /(?<row>\d+);(?<column>\d+)/
      return [Integer(m[:column]), Integer(m[:row])]
    end

    def beginning_of_line
      print "\r"
    end

    def show
      print "\033[?25h"
    end

    def hide
      print "\033[?25l"
    end

    @@methods.each do |method|
      module_function method
    end
  end

  module Cr
    include RBText::Cursor
    @@methods.each do |method|
      module_function method
    end
  end
end

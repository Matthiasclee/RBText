module RBText
  module Cursor
    def up
      print "\033[2A"
    end

    def down
      print "\033[2B"
    end

    def left
      print "\033[1D"
    end

    def right
      print "\033[1C"
    end

    module_function :up, :down, :left, :right
  end
end

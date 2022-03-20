module RBText
  module Screen
    def clear
      print "\033[2J"
    end

    def clear_line
      print "\033[2K"
    end

    def size
      IO.console.winsize
    end

    def height
      self.size[0]
    end

    def width
      self.size[1]
    end

    module_function :clear, :clear_line, :size, :height, :width
  end

  module S
    include RBText::Screen
    module_function :clear, :clear_line, :size, :height, :width
  end
end

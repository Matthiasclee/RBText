module RBText
  module Screen
    @@methods = [
      :clear,
      :clear_line,
      :size,
      :height,
      :width,
      :bell
    ]

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

    def bell
      print "\a"
    end

    @@methods.each do |method|
      module_function method
    end
  end

  module S
    include RBText::Screen
    @@methods.each do |method|
      module_function method
    end
  end
end

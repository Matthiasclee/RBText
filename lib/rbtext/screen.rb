module RBText
  module Screen
    def clear
      print "\033[2J"
    end

    def clear_line
      print "\033[2K"
    end

    module_function :clear, :clear_line
  end

  module S
    include RBText::Screen
    module_function :clear, :clear_line
  end
end

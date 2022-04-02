module RBText
  module Screen
    def self.clear
      print "\033[2J"
    end

    def self.clear_line
      print "\033[2K"
    end

    def self.size
      IO.console.winsize
    end

    def self.height
      self.size[0]
    end

    def self.width
      self.size[1]
    end

    def self.bell
      print "\a"
    end
  end
end

RBText::S = RBText::Screen

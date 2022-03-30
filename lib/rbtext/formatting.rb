module RBText
  module Formatting
    @@methods = [
    :reset,
    :bold,
    :faint,
    :italic, 
    :underline, 
    :blinking, 
    :strikethrough
    ]

    def reset(f_opt = nil, mode: :str)
      if f_opt
        r="\033[#{
          f_opt =~ /^\033\[(1|2)m$/ ? "\033[22m" : "\033[2#{f_opt.gsub(/[^0-9]/, "")}m"
        }"
      else
        r="\033[0m"
      end
      return r if mode == :str
      print r if mode == :set
    end

    def bold(mode: :str)
      r="\033[1m"
      return r if mode == :str
      print r if mode == :set
    end

    def faint(mode: :str)
      r="\033[2m"
      return r if mode == :str
      print r if mode == :set
    end

    def italic(mode: :str)
      r="\033[3m"
      return r if mode == :str
      print r if mode == :set
    end

    def underline(mode: :str)
      r="\033[4m"
      return r if mode == :str
      print r if mode == :set
    end

    def blinking(mode: :str)
      r="\033[5m"
      return r if mode == :str
      print r if mode == :set
    end

    def strikethrough(mode: :str)
      r="\033[9m"
      return r if mode == :str
      print r if mode == :set
    end

    module_function 
    @@methods.each do |method|
      module_function method
    end
  end

  module F
    include RBText::Formatting
    @@methods.each do |method|
      module_function method
    end
  end
end

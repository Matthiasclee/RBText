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

    def reset(f_opt = nil)
      if f_opt
        "\033[#{
          f_opt =~ /^\033\[(1|2)m$/ ? "\033[22m" : "\033[2#{f_opt.gsub(/[^0-9]/, "")}m"
        }"
      else
        "\033[0m"
      end
    end

    def bold
      "\033[1m"
    end

    def faint
      "\033[2m"
    end

    def italic
      "\033[3m"
    end

    def underline
      "\033[4m"
    end

    def blinking
      "\033[5m"
    end

    def strikethrough
      "\033[9m"
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

module RBText
  module Formatting
    def reset
      "\033[0m"
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

    module_function :reset, :bold, :faint, :italic, :underline
  end
end

module RBText
  class Ftext
    def initialize(str)
      @original_text = str
      @text = ""
      
      str = str.split("_")

      for x in str do
        if x[0] == "." && x[x.length-1] == "." && x.split(":").length == 2
          x = x.downcase.gsub(".", "").gsub("-","_")
          x = x.split(":")

          if x[0] == "cf" || x[0] == "c"
            @text << RBText::Colors.color(x[1].to_sym)
          elsif x[0] == "cb"
            @text << RBText::Colors.color(x[1].to_sym, type: :bg)
          elsif x[0] == "f"
            if x[1] == "reset"
              @text << RBText::Formatting.reset
            elsif x[1] == "bold"
              @text << RBText::Formatting.bold
            elsif x[1] == "faint"
              @text << RBText::Formatting.faint
            elsif x[1] == "italic"
              @text << RBText::Formatting.italic
            elsif x[1] == "underline"
              @text << RBText::Formatting.underline
            end
          end
        else
          @text << x
        end 
      end

      @text << RBText::Formatting.reset
    end

    def to_s
      @text
    end

    def normal_text
      @original_text.gsub(/\_\.([a-z]){1,2}\:([a-z\-])+\.\_/, "")
    end

    def original_text
      @original_text
    end
  end

  class Ft < RBText::Ftext
  end
end

class String
  def to_ftext
    RBText::Ftext.new self.to_s
  end
end

require_relative "rbtext/cursor.rb"
require_relative "rbtext/colors.rb"
require_relative "rbtext/formatting.rb"
require_relative "rbtext/ftext.rb"

module RBText
  @ver_1 = 0
  @ver_2 = 0
  @ver_3 = 2

  def version
    "#{@ver_1}.#{@ver_2}.#{@ver_3}"  
  end

  module_function :version
end

require_relative "rbtext/cursor.rb"
require_relative "rbtext/colors.rb"
require_relative "rbtext/formatting.rb"
require_relative "rbtext/ftext.rb"
require_relative "rbtext/screen.rb"

module RBText
  @ver_1 = 0
  @ver_2 = 0
  @ver_3 = 7
  @ver_4 = "ALPHA"

  def version
    "#{@ver_1}.#{@ver_2}.#{@ver_3}#{".#{@ver_4}" if @ver_4.length > 1}"
  end

  module_function :version
end

module R
  include RBText
end

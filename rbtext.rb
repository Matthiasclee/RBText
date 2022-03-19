class RBText
  def cursor_up
    print "\033[2A"
  end
  def cursor_down
    print "\033[2B"
  end
  def cursor_right
    print "\033[1C"
  end
end

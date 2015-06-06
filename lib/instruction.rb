class Instruction

  def initialize
  end

  def is_off_limits?(x, y, table)
    x > table.xlimit - 1 || x < 0 ||
    y > table.ylimit - 1 || y < 0
  end

end
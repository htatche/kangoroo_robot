class Instruction

  def initialize
    # prevent_edge_cases
  end

  def is_off_limits?(x, y, table)
    x > table.xlimit || x < 0 || y > table.ylimit || y < 0
  end

end
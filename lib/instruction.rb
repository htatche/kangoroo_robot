class Instruction

  def initialize
    # prevent_edge_cases
  end

  def is_off_limits?(x, y, table)
    x > table.xlimit || y > table.ylimit
  end

end
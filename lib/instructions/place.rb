require "instruction"

class Instruction::Place < Instruction 

  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def is_off_limits?(table)
    x > table.xlimit || y > table.ylimit
  end

  def execute(position, direction, table)
    return false if is_off_limits?(table)

    position.x = x
    position.y = y 
    direction.cardinal_point = direction

    true
  end

end
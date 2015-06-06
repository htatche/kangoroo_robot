require "instruction"

class Instruction::Place < Instruction 

  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def execute
    # self.position = new Position(x,y)
    puts "Execute instruction Place"
    return true
  end

end
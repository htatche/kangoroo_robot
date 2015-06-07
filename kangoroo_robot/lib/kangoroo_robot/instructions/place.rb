require_relative "../instruction"

class Instruction::Place < Instruction 

  attr_accessor :x, :y, :cardinal_point

  def initialize(x, y, cardinal_point)
    @x = x.to_i
    @y = y.to_i
    @cardinal_point = cardinal_point
  end

  def execute(position, direction, table)
    if is_off_limits?(x, y, table)
      puts "The limits of this table are #{table.xlimit}x#{table.ylimit}"
      return false 
    end

    position.set(x,y)
    direction.cardinal_point = cardinal_point

    true
  end

end
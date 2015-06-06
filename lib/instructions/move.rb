require "instruction"

class Instruction::Move < Instruction 

  def initialize
  end

  def execute(position, direction, table)
    next_position = position.next(direction)

    if is_off_limits?(next_position[:x], next_position[:y], table)
      # Reporter::say(:off_the_limits)
      return false
    else
      position.x = next_position[:x]
      position.y = next_position[:x]      
    end

    true
  end

end
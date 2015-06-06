require_relative "../instruction"

class Instruction::Move < Instruction 

  def initialize
  end

  def execute(position, direction, table)

    if !position.settled
      # Reporter::say(:is_not_placed)
      return false
    end

    next_position = position.next(direction)

    if is_off_limits?(next_position[:x], next_position[:y], table)
      # Reporter::say(:off_the_limits)
      return false
    end

    position.set(next_position[:x], next_position[:y])

    true
  end

end
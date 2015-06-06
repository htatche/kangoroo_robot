require_relative "../instruction"

class Instruction::Left < Instruction 

  def initialize
  end

  def rotate(direction)
    case direction.cardinal_point
      when "NORTH"
        "WEST"
      when "WEST"
        "SOUTH"
      when "SOUTH"
        "EAST"
      when "EAST"
        "NORTH"
    end
  end

  def execute(position, direction)

    if !position.settled
      # Reporter::say(:is_not_placed)
      return false
    end

    direction.cardinal_point = rotate(direction)
  end

end
require_relative "../instruction"

class Instruction::Right < Instruction 

  def initialize
  end

  def rotate(direction)
    case direction.cardinal_point
      when "NORTH"
        "EAST"
      when "EAST"
        "SOUTH"
      when "SOUTH"
        "WEST"
      when "WEST"
        "NORTH"
    end
  end

  def execute(position, direction, table)

    return false if !position.settled

    direction.cardinal_point = rotate(direction)
  end

end
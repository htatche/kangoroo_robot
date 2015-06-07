module KangorooRobot
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

    def execute(position, direction, table)
      return false if !position.settled

      direction.cardinal_point = rotate(direction)
    end

  end
end
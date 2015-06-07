module KangorooRobot
  class Instruction::Move < Instruction 

    def initialize
    end

    def execute(position, direction, table)

      return false unless position.settled

      next_position = position.next(direction)

      return false if is_off_limits?(next_position[:x], next_position[:y], table)

      position.set(next_position[:x], next_position[:y])

      true
    end

  end
end
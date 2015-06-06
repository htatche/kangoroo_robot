require_relative "../instruction"

class Instruction::Report < Instruction 

  def initialize
  end

  def execute(position, direction, table)
    if !position.settled
      puts "I am not on the map !"
      return false
    end

    puts "My current position is x: #{position.x}, y: #{position.y}, and I am heading #{direction.cardinal_point}"
  end

end
require_relative "../instruction"

class Instruction::Report < Instruction 

  def initialize
  end

  def execute(position, direction, table)
    if !position.settled
      puts "I am not on the map, PLACE me first"
      return false
    end

    puts "#{position.x},#{position.y},#{direction.cardinal_point}"
  end

end
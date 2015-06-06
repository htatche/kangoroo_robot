require_relative "table"
require_relative "position"
require_relative "direction"
require_relative "parser"

class Robot

  def initialize
    @table = Table.new(5,5)
    @position = Position.new
    @direction = Direction.new
    
    @parser = Parser.new    
  end

  def listen
    ARGF.each do |line|
      # puts line 
      read line
    end
  end

  def read(str)
    return unless @parser.validate(str)
    
    instruction = @parser.load_instruction()
    instruction.execute(@position, @direction, @table)
  end

end

robot = Robot.new
robot.listen
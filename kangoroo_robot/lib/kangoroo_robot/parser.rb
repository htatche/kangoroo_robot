module KangorooRobot
  class Parser

    attr_accessor :regexp, :matches

    def initialize
      @regexp = %r{ ^(?<command>MOVE|LEFT|RIGHT|REPORT|
                    (PLACE\s+
                    (?<x>\d+),
                    (?<y>\d+),
                    (?<direction>NORTH|EAST|SOUTH|WEST)))
                }x

      @matches = matches
    end  

    def validate(str)
      if @matches = str.match(regexp)
        true
      else
        puts "Sorry I didn't understand your command"
        puts "Refer to the README for available commands"      

        false
      end
    end

    def load_instruction
      case @matches[:command]
        when "MOVE"
          Instruction::Move.new
        when "LEFT"
          Instruction::Left.new
        when "RIGHT"
          Instruction::Right.new
        when "REPORT"
          Instruction::Report.new
        when /PLACE.*/
          Instruction::Place.new(@matches[:x], @matches[:y], @matches[:direction])
      end    
    end

  end
end
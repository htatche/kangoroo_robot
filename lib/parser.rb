class Parser

  attr_accessor :regexp, :matches

  def initialize
    @regexp = %r{ ^(?<command>MOVE|LEFT|RIGHT|REPORT|
                  (PLACE\s+
                  (?<x>[1-5]),
                  (?<y>[1-5]),
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
        {instruction: :move}
      when "LEFT"
        {instruction: :left}
      when "RIGHT"
        {instruction: :right}
      when "REPORT"
        {instruction: :report}
      when /PLACE.*/
        Instruction::Place.new(@matches[:x], @matches[:y], @matches[:direction])
    end    
  end

end
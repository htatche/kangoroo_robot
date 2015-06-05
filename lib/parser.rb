class Parser

  attr_accessor :regexp

  def initialize
    @regexp = %r{ ^(?<instruction>MOVE|LEFT|RIGHT|REPORT|
                  (PLACE\s+
                  (?<x>[1-5]),
                  (?<y>[1-5]),
                  (?<direction>NORTH|EAST|SOUTH|WEST)))
              }x
  end  

  def ensure_matches(matches)
    if matches && matches[:instruction]
      true
    else
      puts "Sorry I didn't understand your instruction"
      puts "Refer to the README for available instructions"      

      false
    end
  end

  def parse(str)
    matches = str.match regexp

    return false unless ensure_matches(matches)

    case matches[:instruction]
      when "MOVE"
        {instruction: :move}
      when "LEFT"
        {instruction: :left}
      when "RIGHT"
        {instruction: :right}
      when "REPORT"
        {instruction: :report}
      when /PLACE.*/
        {instruction: :place, x: matches[:x], y: matches[:y], direction: matches[:direction]}
      end    

  end

end
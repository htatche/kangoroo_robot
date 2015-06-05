class Parser

  attr_accessor :regexp

  def initialize
    @regexp = /(MOVE|LEFT|RIGHT|REPORT|(PLACE\s+([1-5]),([1-5]),(NORTH|EAST|SOUTH|WEST)))/
  end  

  def ensure_matches(matches)
    if matches && matches.captures
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

    instruction = matches[1]

    case instruction 
      when "MOVE"
        {instruction: :move}
      when "LEFT"
        {instruction: :left}
      when "RIGHT"
        {instruction: :right}
      when "REPORT"
        {instruction: :report}
      when /PLACE.*/
        x, y, direction = matches[3], matches[4], matches[5]
        {instruction: :place, args: [x,y,direction]}
      end    

  end

end
class Position

  attr_reader :x, :y
  attr_accessor :settled

  def initialize
  end

  def set(x, y)
    @x, @y = x, y

    @settled = true
  end

  def now 
    return false unless @settled

    {x: x, y: y}
  end

  # Next position according to current direction
  def next(direction)
    return false unless @settled
    
    case direction.cardinal_point
      when "NORTH"     
        {x: x,   y: y+1}
      when "EAST"
        {x: x+1, y: y}
      when "SOUTH"
        {x: x,   y: y-1}
      when "WEST"
        {x: x-1, y: y}
    end           
  end

end
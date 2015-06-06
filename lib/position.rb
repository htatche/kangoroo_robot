class Position

  attr_accessor :x, :y

  def initialize(x=0, y=0)
    @x = x
    @y = y
  end

  def now 
    [x,y]
  end

  # Next position according to current direction
  def next(direction)
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
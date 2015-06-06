class Position

  attr_accessor :x, :y

  def initialize(x, y)
    @x = x ||= 0
    @y = y ||= 0
  end

  def now 
    [x,y]
  end

  # Next position according to current direction
  def next

  end

end
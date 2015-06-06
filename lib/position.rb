class Position

  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def now 
    [x,y]
  end

  # Next position according to current direction
  def next

  end

  def is_off_limits?(table)
    x > table.xlimit || y > table.ylimit
  end

end
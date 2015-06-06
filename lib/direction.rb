class Direction

  attr_accessor :cardinal_point

  def initialize(cardinal_point = "NORTH")
    @cardinal_point = cardinal_point
  end

end
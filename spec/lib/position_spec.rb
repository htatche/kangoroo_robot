require "spec_helper"
require "position"

describe "Position" do

  let(:position) { Position.new(1,2) }

  it "has x coordinate" do
    expect(position.x).to eq(1)
  end    

  it "has y coordinate" do
    expect(position.y).to eq(2)
  end   

  it "gives the current position" do
    expect(position.now).to eq([1,2])
  end 

  it "gives the next position" do
    table = Table.new(5,5)
    direction = Direction.new
    position = Position.new
    place = Instruction::Place.new(0,0,"EAST")

    place.execute(position, direction, table)
    next_position = position.next(direction)

    expect(next_position).to eq({x: 1, y: 0})
  end
 
end
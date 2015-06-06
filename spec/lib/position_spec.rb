require "spec_helper"
require "position"

describe "Position" do

  let(:position) { Position.new }

  context "After setting the position" do

    it "has x coordinate" do
      position.set(1,2)
      expect(position.x).to eq(1)
    end    

    it "has y coordinate" do
      position.set(1,2)
      expect(position.y).to eq(2)
    end   

    it "is settled" do
      position.set(1,2)
      expect(position.settled).to be true
    end

    it "gives the current position" do
      position.set(1,2)
      expect(position.now).to eq({x: 1, y: 2})
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
 
end
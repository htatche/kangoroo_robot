require "spec_helper"
# require "instructions/left"

describe "Left" do

  let(:table) { Table.new(5,5) }
  let(:position) { Position.new }
  let(:direction) { Direction.new }
  let(:left) { Instruction::Left.new } 

  context "rotation" do

    it "executes the instruction" do
      place = Instruction::Place.new(2,2,"NORTH")

      place.execute(position, direction, table)
      left.execute(position, direction, table)

      expect(direction.cardinal_point).to eq("WEST")
    end  

    it "does not executes the instruction if position is not settled" do
      place = Instruction::Place.new(2,2,"NORTH")

      expect(left.execute(position, direction, table)).to be false
    end 

  end

  context "rotation" do

    it "rotates 90 degrees to left from NORTH" do
      place = Instruction::Place.new(2,2,"NORTH")
      place.execute(position, direction, table)

      expect(left.rotate(direction)).to eq("WEST")
    end

    it "rotates 90 degrees to left from WEST" do
      place = Instruction::Place.new(2,2,"WEST")
      place.execute(position, direction, table)

      expect(left.rotate(direction)).to eq("SOUTH")
    end

    it "rotates 90 degrees to left from SOUTH" do
      place = Instruction::Place.new(2,2,"SOUTH")
      place.execute(position, direction, table)

      expect(left.rotate(direction)).to eq("EAST")
    end

    it "rotates 90 degrees to left from EAST" do
      place = Instruction::Place.new(2,2,"EAST")
      place.execute(position, direction, table)

      expect(left.rotate(direction)).to eq("NORTH")
    end        
  end

end
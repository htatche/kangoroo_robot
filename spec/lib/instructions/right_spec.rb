require "spec_helper"
require "instructions/right"

describe "Right" do

  let(:table) { Table.new(5,5) }
  let(:position) { Position.new }
  let(:direction) { Direction.new }
  let(:right) { Instruction::Right.new } 

  context "rotation" do

    it "executes the instruction" do
      place = Instruction::Place.new(2,2,"NORTH")

      place.execute(position, direction, table)
      right.execute(position, direction)

      expect(direction.cardinal_point).to eq("EAST")
    end  

    it "does not executes the instruction if position is not settled" do
      place = Instruction::Place.new(2,2,"NORTH")

      expect(right.execute(position, direction)).to be false
    end 

  end

  context "rotation" do

    it "rotates 90 degrees to right from NORTH" do
      place = Instruction::Place.new(2,2,"NORTH")
      place.execute(position, direction, table)

      expect(right.rotate(direction)).to eq("EAST")
    end

    it "rotates 90 degrees to right from EAST" do
      place = Instruction::Place.new(2,2,"EAST")
      place.execute(position, direction, table)

      expect(right.rotate(direction)).to eq("SOUTH")
    end

    it "rotates 90 degrees to right from SOUTH" do
      place = Instruction::Place.new(2,2,"SOUTH")
      place.execute(position, direction, table)

      expect(right.rotate(direction)).to eq("WEST")
    end

    it "rotates 90 degrees to right from WEST" do
      place = Instruction::Place.new(2,2,"WEST")
      place.execute(position, direction, table)

      expect(right.rotate(direction)).to eq("NORTH")
    end        
  end

end
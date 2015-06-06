require "spec_helper"
require "instructions/place"

describe "Place" do

  let(:table) { Table.new(5,5) }
  let(:position) { Position.new }
  let(:direction) { Direction.new("EAST") }
  let(:place) { Instruction::Place.new(3,4,"EAST") }

  it "has an x coordinate" do
    expect(place.x).to eq(3)
  end

  # Needs to move to instruction_spec 
  # it "knows if a position is off the limits of a table" do
  #   table = Table.new(1,1)

  #   expect(place.is_off_limits?(table)).to be true
  # end   

  it "executes the instruction" do
    position.set(5,5)
    expect(place.execute(position, direction, table)).to be true
  end

end
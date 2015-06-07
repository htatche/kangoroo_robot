require "spec_helper"
# require "instructions/place"

describe "Place" do

  let(:table) { Table.new(5,5) }
  let(:position) { Position.new }
  let(:direction) { Direction.new("EAST") }
  let(:place) { Instruction::Place.new(3,4,"EAST") }

  it "has an x coordinate" do
    expect(place.x).to eq(3)
  end

  it "executes the instruction" do
    position.set(5,5)
    expect(place.execute(position, direction, table)).to be true
  end

end
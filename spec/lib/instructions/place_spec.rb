require "spec_helper"
require "instructions/place"

describe "Place" do

  let(:place) { Instruction::Place.new(1,2,"EAST") }

  it "has an x coordinate" do
    expect(place.x).to eq(1)
  end


  it "executes the instruction" do
    expect(place.execute).to be true
  end

end
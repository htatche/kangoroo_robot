require "spec_helper"
require "position"

describe "Position" do

  let(:position) { Position.new(1,2) }

  it "needs two coordinates" do
    expect{Position.new}.to raise_error(ArgumentError)
  end    

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
    pending
  end
 
end
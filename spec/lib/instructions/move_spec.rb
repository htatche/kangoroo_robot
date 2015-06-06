require "spec_helper"
require "instructions/move"

describe "Move" do

  let(:table) { Table.new(5,5) }
  let(:position) { Position.new }
  let(:direction) { Direction.new }
  let(:place) { Instruction::Place.new(5,5,"NORTH") } 
  let(:move) { Instruction::Move.new } 

  it "does not execute instruction if robot will go off limits" do
    place.execute(position, direction, table)
    expect(move.execute(position, direction, table)).to be false
  end

end
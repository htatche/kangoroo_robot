require "spec_helper"
# require "instruction"

describe "Instruction" do

  let(:instruction) { Instruction.new }
  let(:table) { Table.new(5,5) }

  it "knows if a position is off the limits of a table" do
    expect(instruction.is_off_limits?(10,20, table)).to be true
  end   

end
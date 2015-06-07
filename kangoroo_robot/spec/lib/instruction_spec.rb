require "instruction"
require "table"

module KangorooRobot
  describe "Instruction" do

    let(:instruction) { Instruction.new }
    let(:table) { Table.new(5,5) }

    it "detects off limits position" do
      expect(instruction.is_off_limits?(10,20, table)).to be true
    end   

  end
end
require "instructions/report"

module KangorooRobot
  describe "Report" do

    let(:table) { Table.new(5,5) }
    let(:position) { Position.new }
    let(:direction) { Direction.new("EAST") }
    let(:report) { Instruction::Report.new }  

    it "does not execute the instruction if robot is not on the map" do
      expect(report.execute(position, direction, table)).to be false
    end    
   
  end
end
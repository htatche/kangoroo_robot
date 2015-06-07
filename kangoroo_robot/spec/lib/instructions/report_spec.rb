require "instructions/report"

module KangorooRobot
  describe "Report" do

    let(:table) { Table.new(5,5) }
    let(:position) { Position.new }
    let(:direction) { Direction.new("EAST") }
    let(:report) { Instruction::Report.new }  

    describe "#execute" do

       context "when robot is not placed" do
        it "ignores command" do
          expect(report.execute(position, direction, table)).to be false
        end           
      end

    end
  end
end
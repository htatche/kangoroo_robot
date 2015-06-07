require "instructions/place"

module KangorooRobot
  describe "Place" do

    let(:table) { Table.new(5,5) }
    let(:position) { Position.new }
    let(:direction) { Direction.new("EAST") }
    let(:place) { Instruction::Place.new(3,4,"EAST") }

    context "after initializing" do
      it "has an x coordinate" do
        expect(place.x).to eq(3)
      end
    end

    describe "#execute" do
      it "executes the instruction" do
        expect(place.execute(position, direction, table)).to be true
      end

      context "when position is off limits" do
        it "does not execute the instruction" do
          unvalid_placing = Instruction::Place.new(3,25,"EAST")
          expect(unvalid_placing.execute(position, direction, table)).to be false
        end
      end
    end

  end
end
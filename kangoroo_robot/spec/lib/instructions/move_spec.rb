require "instructions/move"

module KangorooRobot
  describe "Move" do

    let(:table) { Table.new(5,5) }
    let(:position) { Position.new }
    let(:direction) { Direction.new }
    let(:move) { Instruction::Move.new } 

    context "when edge cases" do

      it "does not execute instruction if robot will go off limits" do
        place = Instruction::Place.new(5,5,"NORTH")
        place.execute(position, direction, table)

        expect(move.execute(position, direction, table)).to be false
      end

      it "does not move if robot will go off limits" do
        place = Instruction::Place.new(0,0,"SOUTH")
        place.execute(position, direction, table)
        move.execute(position, direction, table)

        expect(position.now).to eq({x: 0, y: 0})
      end

      it "does not execute instruction if robot is not placed" do
        place = Instruction::Place.new(0,0,"NORTH")

        expect(move.execute(position, direction, table)).to be false
      end

    end

    context "when executing instruction" do

      it "goes north" do
        place = Instruction::Place.new(0,0,"NORTH")
        place.execute(position, direction, table)
        move.execute(position, direction, table)

        expect(position.now).to eq({x: 0, y: 1})
      end

      it "goes east" do
        place = Instruction::Place.new(0,0,"EAST")
        place.execute(position, direction, table)
        move.execute(position, direction, table)

        expect(position.now).to eq({x: 1, y: 0})
      end

      it "goes south" do
        place = Instruction::Place.new(1,3,"SOUTH")
        place.execute(position, direction, table)
        move.execute(position, direction, table)

        expect(position.now).to eq({x: 1, y: 2})
      end

      it "goes west" do
        place = Instruction::Place.new(1,3,"WEST")
        place.execute(position, direction, table)
        move.execute(position, direction, table)

        expect(position.now).to eq({x: 0, y: 3})
      end  

    end

  end
end
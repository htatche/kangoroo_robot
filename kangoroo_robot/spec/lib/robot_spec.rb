require "robot"

module KangorooRobot
  describe "Robot" do

    let(:robot) { Robot.new }

    context "after initializing" do

      it "has a table" do
        expect(robot.table.is_a?(Table)).to be true
      end    

      it "has a position" do
        expect(robot.position.is_a?(Position)).to be true
      end  

      it "has a direction" do
        expect(robot.direction.is_a?(Direction)).to be true
      end 

      it "has a parser" do
        expect(robot.parser.is_a?(Parser)).to be true
      end     

    end

    context "when listening the user input" do
      it "reads the command and executes instruction" do
        command = "PLACE 2,3,NORTH"
        robot.read(command)
        expect(robot.position.now).to eq({x:2, y:3})
      end

      it "does not execute unvalid commands" do
        command = "PLA_CE 2,3,NORTH"
        robot.read(command)
        expect(robot.position.settled).to be false
      end      
    end

  end
end
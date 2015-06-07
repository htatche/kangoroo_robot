require "robot"

module KangorooRobot
  describe "Robot" do

    let(:robot) { Robot.new }

    it "creates a table" do
      expect(robot.table.is_a?(Table)).to be true
    end    

    it "needs a valid size" do
      # expect{Table.new("a", 1)}.to raise_error(ArgumentError)
    end 
    
  end
end
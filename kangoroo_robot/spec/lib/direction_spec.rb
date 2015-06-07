require "direction"

module KangorooRobot
  describe "Direction" do

    let(:direction) { Direction.new("EAST") }  

    it "has a cardinal point" do
      expect(direction.cardinal_point).to eq("EAST")
    end    
   
  end
end
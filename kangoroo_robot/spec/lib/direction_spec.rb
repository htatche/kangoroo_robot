require "direction"

module KangorooRobot
  describe "Direction" do

    let(:direction) { Direction.new("EAST") }  

    context "after initializing" do
      it "receives a cardinal point" do
        expect(direction.cardinal_point).to eq("EAST")
      end    
    end
   
  end
end
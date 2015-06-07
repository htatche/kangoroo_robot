require "table"

module KangorooRobot
  describe "Table" do

    context "after initializing" do

      it "needs two arguments" do
        expect{Table.new}.to raise_error(ArgumentError)
      end    

      it "needs a valid size" do
        expect{Table.new("a", 1)}.to raise_error(ArgumentError)
      end 

    end

    describe "#is_valid?" do
      it "is false if table is unvalid" do
        expect{Table.new("a", "b")}.to raise_error(ArgumentError)
      end
    end

  end
end
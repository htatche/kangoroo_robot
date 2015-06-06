require "spec_helper"
require "table"

describe "Table" do

  let(:table) { Table.new(1,2) }

  it "needs two arguments" do
    expect{Table.new}.to raise_error(ArgumentError)
  end    

  it "needs a valid size" do
    expect{Table.new("a", 1)}.to raise_error(ArgumentError)
  end 
  
end
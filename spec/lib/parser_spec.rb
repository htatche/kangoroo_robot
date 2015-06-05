require "spec_helper"
require "parser"

describe "Parser" do

  let(:parser) { Parser.new }

  it "has a regular expression" do
    expect(parser.regexp.is_a?(Regexp)).to be true
  end

  it "warns if there are no matches in the regexp" do
    matches = "UNVALID INSTRUCTION".match parser.regexp
    result  = parser.ensure_matches(matches)

    expect(result).to be false
  end

  it "does not parse an unvalid instruction" do
    instruction = parser.parse "🙈 🙉 🙊"
    expect(instruction).to be false
  end  

  it "parses a MOVE instruction" do
    instruction = parser.parse "MOVE"
    expect(instruction).to eq({instruction: :move})
  end

  it "parses a LEFT instruction" do
    instruction = parser.parse "LEFT"
    expect(instruction).to eq({instruction: :left})
  end

  it "parses a RIGHT instruction" do
    instruction = parser.parse "RIGHT"
    expect(instruction).to eq({instruction: :right})
  end    

  it "parses a REPORT instruction" do
    instruction = parser.parse "REPORT"
    expect(instruction).to eq({instruction: :report})
  end

  it "parses a PLACE instruction" do
    instruction = parser.parse "PLACE 1,2,EAST"
    expect(instruction).to eq({instruction: :place, args: ["1","2","EAST"]})
  end    

end
require "spec_helper"
# require "parser"

describe "Parser" do

  let(:parser) { Parser.new }

  it "has a regular expression" do
    expect(parser.regexp.is_a?(Regexp)).to be true
  end

  it "does not validate a wrong command" do
    instruction = parser.validate "🙈 🙉 🙊"
    expect(instruction).to be false
  end  

  it "parses a MOVE instruction" do
    parser.validate "MOVE"
    instruction = parser.load_instruction
    expect(instruction.is_a?(Instruction::Move)).to be true
  end

  it "parses a LEFT instruction" do
    parser.validate "LEFT"
    instruction = parser.load_instruction
    expect(instruction.is_a?(Instruction::Left)).to be true
  end

  it "parses a RIGHT instruction" do
    parser.validate "RIGHT"
    instruction = parser.load_instruction
    expect(instruction.is_a?(Instruction::Right)).to be true
  end    

  it "parses a REPORT instruction" do
    parser.validate "REPORT"
    instruction = parser.load_instruction
    expect(instruction.is_a?(Instruction::Report)).to be true
  end

  it "validates a PLACE command" do
    valid = parser.validate "PLACE 1,2,EAST"
    expect(valid).to be true
  end    

  it "loads a PLACE command" do
    parser.validate "PLACE 1,2,EAST"
    instruction = parser.load_instruction
    expect(instruction.is_a?(Instruction::Place)).to be true
  end    

end
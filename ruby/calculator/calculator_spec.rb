# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'calculator'

describe Calculator do
  let(:calculator) { Calculator.new } # 'syntactic sugar'

  it "adds two integers" do
    # calculator = Calculator.new # this is refactored above 
    expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    # calculator = Calculator.new 
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    # calculator = Calculator.new 
    expect(calculator.multiply(2,3)).to eq 6
  end

  it "divies two integers" do 
    expect(calculator.divide(4,2)).to eq 2
  end
end
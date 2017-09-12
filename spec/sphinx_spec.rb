require 'rspec'
require 'riddles'

describe("#riddles") do
  # it("answers are not all correct") do
  #   example_sphinx = Riddle.new("correct", "incorrect", "correct")
  #   expect(example_sphinx.result).to eq("Sorry!! You answered incorrectly.")
  # end

  it("gives clues to incorrect answer1") do
    example_sphinx = Riddle.new("incorrect", "correct", "correct")
    expect(example_sphinx.result).to eq("Hint: Not options 1 and 2.")
  end

  it("gives clues to incorrect answer2") do
    example_sphinx = Riddle.new("correct", "incorrect", "correct")
    expect(example_sphinx.result).to eq("Hint: Not options 1 and 3.")
  end

  it("gives clues to incorrect answer3") do
    example_sphinx = Riddle.new("correct", "correct", "incorrect")
    expect(example_sphinx.result).to eq("Hint: Not options 1 and 2.")
  end

end

require_relative 'test_helper'
require './lib/instructions'

class InstructionsTest < Minitest::Test
  def test_it_prints_instructions
    skip
    instructions = "These are the instructions on how to play the game of mastermind. Read up! \nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"

    assert_equal Instructions.show, instructions
  end
end

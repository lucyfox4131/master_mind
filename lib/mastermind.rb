require_relative 'instructions'
require_relative 'game'

class Mastermind

  def self.start
    puts "Welcome to MASTERMIND \nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
    check_if_valid(gets.chomp.downcase)
  end

  def self.check_if_valid(response)
    if response == "p" || response == "i" || response == "q"
      handle_response(response)
    else
      startScreen
    end
  end

  def self.handle_response(response)
    start_game if response == "p"
    instructions if response == "i"
    end_game if response == "q"
  end

  def self.end_game
    puts "We're sorry to see you go! Come back to play more soon!"
  end

  def self.start_game
    Game.start
  end

  def self.instructions
    Instructions.show
    check_if_valid(gets.chomp.downcase)
  end
end

Mastermind.start

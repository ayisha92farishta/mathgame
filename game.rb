require './player'
require './turn'
require './question'

class Game
  attr_accessor :p1, :p2, :turn
  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @turn = Turn.new
  end

  def start_game   
    puts "---GAME STARTED---"
    @new_question = Question.new

  end

 
  # puts @p1.name

end




game = Game.new

game.start_game

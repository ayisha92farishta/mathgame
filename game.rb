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
  while
    if @p1.lives >= 1 && @p2.lives >= 1  
      p "---NEW TURN ---"
      question = Question.new
     
    end  
    p "#{@turn.whose}: #{question.ask}"

    answer = gets.chomp.to_i
    question.right_answer(answer) 
    
    # (if wrong answer then deduct a life, then  check if player has more than 0 life, if not game over. The other player wins
    if !question.right_answer(answer)
      p "#{@turn.whose}: Seriously? No!"
      if @turn.whose === "Player 1"
        @p1.lives -= 1
      elsif @turn.whose === "Player 2"
        @p2.lives -= 1
      end
    else
      p "#{@turn.whose}: YES! You are correct!"
    end

  
    # keep track of the player lives 
    scoreboard = "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"

    p scoreboard
  
    switch = @turn.switch

  end

  switch

  if @turn.whose === "Player 1"
    p "#{@turn.whose} wins with a score of #{@p1.lives}/3"
    
  elsif @turn.whose === "Player 2"
    
    p "#{@turn.whose} wins with a score of #{@p2.lives}/3"
  end
  p "---GAME OVER---"
  p "Good bye!"


end


end



puts "---GAME STARTED---"

game = Game.new

game.start_game

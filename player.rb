class Player
  attr_accessor :name, :lives

  def initialize(name)
    @lives = 3
    @name = name
  end

  def wrong_answer
    if @lives > 0
      @lives -= 1
    else
      "Game Over"
    end
  end

  def right_answer
    "Right Answer"
  end
end
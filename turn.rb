class Turn
  attr_accessor :whose

  def initialize
    @whose = "Player 1"
  end

  def switch
    if @whose == "Player 1"
      @whose = "Player 2"
    else
      @whose = "Player 1"
    end
  end
end
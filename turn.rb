class Turn
  attr_accessor :whose

  def initialize
    @whose = "p1"
  end

  def switch
    if @whose == "p1"
      @whose = "p2"
    else
      @whose = "p1"
    end
  end
end
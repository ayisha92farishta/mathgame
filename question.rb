class Question
  attr_accessor :num1, :num2
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask
    "What is the sum of #{@num1} and #{@num2}?"
  end

  def right_answer(ans)
    if ans === @num1 + @num2
      return true
    else
      return false
    end
  end
end




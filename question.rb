class Question
  attr_accessor :num1, :num2
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask
    puts "What is the sum of #{@num1} and #{@num2}?"
  end

  def right_answer(ans)
    if ans === @num1 + @num2
      p "Right answer"
    else
      p "Sorry wrong answer"
    end
  end
end


question = Question.new

question.ask

answer = gets.chomp.to_i

question.right_answer(answer)



# answer = gets.chomp

# question.right_answer(gets.chomp)
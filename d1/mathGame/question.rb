#Player 1 state score
#Player 1 update score  Validate whether the game is over when losing a life
#Player 2 state score
#Player 2 update score Validate whether the game is over when losing a life
#output math question function with correct answer or false
# New Turn to switch players


class Question 
  attr_reader :question, :answer

  def initialize()
    @question = "dfgadfg"
    @num1 = 0
    @num2 = 0
    @answer = 0
  end
  
  def createQuestion()
    @num1 = rand(10)
    @num2 = rand(10)
    @question = "What is the total of #{@num1} and #{@num2}?"
    @answer = @num1 + @num2
  end

end

# newGame = Question.new()

# newGame.createQuestion()

# puts newGame.question
# puts newGame.answer
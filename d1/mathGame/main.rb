
require './scores'
require './question'

class Game

  def initialize()
    @scores = Scores.new
    @question = Question.new
    
  end

  def askQuestion(user)
    @question.createQuestion()
    puts "#{user} turn: #{@question.question}"
    result = gets.chomp()

    if result.to_i == @question.answer
      puts "Correct!"
    else
      puts "Wrong!"
      @scores.loseGame(user)
    end 

    checkScore(user)
    
  end

  def checkScore(player)
    score1 = @scores.player1
    score2 = @scores.player2
    if score1 == 0
      puts "Player 2 wins with a score of #{score2}/3"
      puts "----- GAME OVER -----"
      return
    elsif score2 == 0
      puts "Player 1 wins with a score of #{score1}/3"
      puts "----- GAME OVER -----"

      return
    end
    puts "P1: #{score1}/3 vs P2: #{score2}/3"
    newTurn(player)
    
  end

  def newTurn(player)
    puts "----- NEW TURN -----"
    if player == "player1"
      askQuestion("player2")
    elsif player == "player2"
      askQuestion("player1")
    end
  end

end


newGame = Game.new()
newGame.askQuestion("player1")
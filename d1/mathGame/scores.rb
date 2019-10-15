class Scores 
  attr_reader :player1, :player2

  def initialize()
    @player1 = 3
    @player2 = 3
  end

  def loseGame(user)
    if user == "player1"
      @player1 = @player1 - 1
    else
      @player2 = @player2 - 1
    end

  end

end

# newGame = Scores.new()

# newGame.loseGame("player1")
# puts newGame.player1
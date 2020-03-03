require './player'
require './question'

class Game 
  
  def initialize()
    @p1 = Player.new("player1")
    @p2 = Player.new("player2")
    @current_player = @p1
    @is_game_over = false 
  end

  def switch 
    if @current_player == @p1
      @current_player = @p2
    else
      @current_player = @p1
    end
  end

  def game_over
    @is_game_over = true
    if @p1.number_of_lives == 0 
      puts "Player 2 wins with score of #{@p2.number_of_lives}/3"
    elsif @p2.number_of_lives == 0
      puts "Player 1 wins with score of #{@p1.number_of_lives}/3"
    end
  end
  
  def run_game
    while !@is_game_over do
      question = Question.new
      puts "#{question.num1} + #{question.num2}"
      choice = $stdin.gets.chomp
      if choice.to_i == question.ans
        puts "P1: #{@p1.number_of_lives} vs P2: #{@p2.number_of_lives}"
        switch
        puts "#{@current_player.inspect}"
      else 
        @current_player.number_of_lives -= 1
        if @current_player.number_of_lives == 0 
          game_over

        else 
          puts "P1: #{@p1.number_of_lives} vs P2: #{@p2.number_of_lives}"
          puts "----- NEW TURN -----"
          switch
        end
      end
    end 
  end
end

g1 = Game.new

g1.run_game

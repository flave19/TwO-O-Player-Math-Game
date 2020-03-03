def start
  puts "Player 1 what does 5 plus 3 equal?"

  print "> "
  

  if choice == "A1"
    new_turn
  else
    @@number_of_lives -= 1
  end
end


# def new_turn
#   puts "Player 2 what does 3 plus 98 equal?"

#     print "> "
#     choice = $stdin.gets.chomp

#     if choice == "101"
#       next_turn
#     else
#       puts ""

#     end
#   end
# end

# start

class Players
  @@number_of_lives = 3
  attr name : 

end

2 instances for player1 = and player2 


number of lives will be public method 

class Game 
new_turn = outputs scores regardless of correct/incorrect answer,
attribute to track current player 

(while lives is >0 )
new_turn
else 
gameOver = only occurs when one player loses all their lives, annouces who won

class Question 
create instance of question class


order of operations
create instance of player1 and player2
create instance of question for player1
evaluate question 
depending on answer  subtract lives if answer is wrong 

check if current player has any lives 
provide score 



switch players 




player1 = contains 3 lives and loses lives for every incorrect answer
player2 =contains 3 lives and loses lives for every incorrect answer



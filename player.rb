
class Player
  attr_accessor :name , :number_of_lives
  
  def initialize(name)
    @name = name
    @number_of_lives = 3
  end
end
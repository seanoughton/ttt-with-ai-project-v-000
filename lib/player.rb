class Player

  attr_reader :token

  def initialize(token) #this might need to be an optional argument
    #this might not be correct
    @token = token
  end

#not sure that this method is necessary here
  #def move
    #Every player subclass will implement a #move method that represents how that type of player makes a move in Tic-tac-toe.
  #end

end

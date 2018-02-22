class Player
  attr_reader :token

  def initialize(token) #this might need to be an optional argument
    #this might not be correct
    @token = token
  end
end

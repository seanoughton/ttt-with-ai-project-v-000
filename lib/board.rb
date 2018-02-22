class Board
  attr_accessor :cells

  def initialize
    #creates an empty board
    self.reset!
  end

  def reset!
    #reset the state of the cells on the board 
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display
    #A board can print its current state with the #display method.
    #this is an instance method that a board calls on itself to display itself
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
    puts " "
  end

  def position(input)
    #takes in the user's input in the form of 1-9 strings like "2" or "9" and looks up the value of the cells at the correct index from the array's perspective. All other methods will take input in the user's perspective of 1-9 strings and use #position to look up the value according to the cells' array index.
    #convert the input to an integer and subtract one from the integer to get the array position
    #and return the value at the array position
    self.cells[input.to_i - 1 ]
  end

  def update(position,player)
    #represents updating the board when a player makes a move
    #This method will take two arguments, the first will be the position the user wants to occupy in the form of 1-9 strings that you will need to convert to the board cells' array index, along with the player object making the move
    #player is an object
    #When you update the appropriate index in @cells, you will set it equal to the token of the player object by calling the #token method on the player.
    #get the appropriate position in the array from the postion input
    #access the array position
    #assign the player.token to that position
    self.cells[position.to_i - 1] = player.token
  end

  def token
  end

  #a board can return values based on its state such as
  def full?
    #when entirely occupied with "X" and "O"s
    #if @cells includes an empty space " ", then it is not full
    true if !(self.cells.include?(" "))

  end

  def turn_count
    #based on how many positions in the cells array are filled.
    full_positions = self.cells.find_all do |element|
      element != " "
    end
    full_positions.size
  end

  def taken?(input)
    #will return true or false for an individual position.
    #test to see if that position in the array is taken
    #if there is something at this position, then return true
    if position(input) == " " #if what is ast the position does not equal " ", then true
      false
    else
      true
    end
  end

  def valid_move?(input)
    #takes a string as an input, converts that string to an integer and checks to see if it is a valid move
    #will ensure that moves are between 1-9 and not taken.
    move = input.to_i
    if (1..9).include?(move) && taken?(input) == false
      true
    else
      false
    end
  end


end

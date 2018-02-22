class Board
  attr_accessor :cells

  def initialize
    #creates an empty board
    self.reset!
  end

  def reset! #reset the state of the cells on the board
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
    puts " "
  end

  def position(input) #return the value at the array position
    self.cells[input.to_i - 1 ]
  end

  def update(position,player) #updates the board when a player makes a move
    #When you update the appropriate index in @cells, you will set it equal to the token of the player
    self.cells[position.to_i - 1] = player.token
  end

  def token
  end

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

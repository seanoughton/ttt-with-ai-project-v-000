module Players
  class Human < Player

    def move(board)
      #takes in a board argument and allows a human player to enter a move via the CLI.
      #The method should return the value the user enters.
      #Even though the method accepts a board argument, it does not need to use it.
      puts "please enter 1-9:"
      input = gets.strip
    end
  end
end

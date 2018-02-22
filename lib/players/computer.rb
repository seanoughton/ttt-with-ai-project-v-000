#Define a class Players::Computer that represents a computer player of Tic-tac-toe.
#not sure this is set up correctly
#question: can you define a module (Players), in two separate files
#because it is also defined in the human.rb files
#will this throw an error
module Players
  class Computer < Player
    def move(board)
      #accepts a board and returns the move the computer wants to make in the form of a 1-9 string.
      #How the computer decides to make that move is up to you but it must be capable of returning a valid move at some point.
      #Returns a valid move for the first move but after that your program will go into an infinite loop because the computer will constantly try to occupy the "1" position in the board even though it is already occupied. So don't do that.
      #Think about the levels of intelligence you can build into this method. Start with the simplest level of intelligence, and get more and more complicated. Each step of the way you should have a working computer player though.
      #Remember, Tic-tac-toe when played perfectly is unwinnable. You should strive to build computer logic that when the computer plays, the game is unwinnable. You can hardcode your logic, things like "On turn 1 always try to go in the middle if you can" and if not "try to go in a corner" or any logic tree you can think of - there is an algorithm called Min/Max, but it's going to be hard to implement given our current implementation of a Game, so we recommend building something that's a more colloquial or condition-based algorithm.


      def empty_cells
        array_of_empty_cells = []
        board.cells.each_with_index do |element,index|
          if element == " "
            array_of_empty_cells << index+1
          end
        end
        array_of_empty_cells
      end

      #take the corners strategy
      #take these positions: 1,3,9 : 3,7,9: 1,7,9: 1,3,7
      def take_corners_strategy
        #get the empty positions: call method empty_cells
        #if 1,3,9 is in the empty_cells then play each one of these numbers successively

      end


      #pick the first empty cells
      array_of_empty_cells = []
      board.cells.each_with_index do |element,index|
        if element == " "
          array_of_empty_cells << index+1
        end
      end
      array_of_empty_cells[0].to_s




    end
  end

end

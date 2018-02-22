#Define a class Players::Computer that represents a computer player of Tic-tac-toe.
#not sure this is set up correctly
#question: can you define a module (Players), in two separate files
#because it is also defined in the human.rb files
#will this throw an error
module Players
  class Computer < Player
    def move(board)
      #accepts a board and returns the move the computer wants to make in the form of a 1-9 string.
      @the_board = board

      WIN_COMBINATIONS = []


      def empty_cells #returns an array with the position values of the empty cells
        array_of_empty_cells = []
        @the_board.cells.each_with_index do |element,index|
          if element == " "
            array_of_empty_cells << (index+1).to_s
          end
        end
        array_of_empty_cells
      end

      def opponent #returns who the opponent is as a string
        if self.token == "X"
          opponent = "O"
        elsif self.token == "O"
          opponent = "X"
        end
        opponent
      end


      def opponent_cells #returns an array with the position values of where the opponent has played
        array_of_opponent_cells = []
        @the_board.cells.each_with_index do |element,index|
          if element == opponent
            array_of_opponent_cells << (index+1).to_s
          end
        end
        array_of_opponent_cells
      end

      def block#provides defenesive/blocking moves
        #need a blocking method that takes into account where each player has played
        opponent_cells #where the opponent is on the board
        #if any of the WIN_COMBINATIONS array combo's have two of the opponent,
          #check the board using each of the winning combo's
          #check each sub array for two of the opponent

        #then make a move in the empty cell
        #else use offensive strategy
      end

      #you go on offense until it is necessary to make a defensive move

      def take_corners_strategy #take these positions: 1,3,9 : 3,7,9: 1,7,9: 1,3,7

        defense
        empty_cells
        #find the first of these numbers that is not in empty_cells and return that element
        next_move = empty_cells.select do |element|
          element == "1" || element == "3"|| element == "7" || element == "9"
        end
        #return the next move
        if next_move == [] && @the_board.cells[4] == " "
          #if the strategy cells are full and the middle is empty play the middle
          next_move = "5"
        elsif next_move.size > 0
          #if next move is got stuff in the array, play the first element of the array
          next_move[0]
        else
          #if you can't play the strategy moves or the middle, play the first empty cells
          next_move = empty_cells[0]
        end
      end

      take_corners_strategy

    end #move end
  end #class end

end #module end

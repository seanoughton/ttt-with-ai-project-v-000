#Define a class Players::Computer that represents a computer player of Tic-tac-toe.
#not sure this is set up correctly
#question: can you define a module (Players), in two separate files
#because it is also defined in the human.rb files
#will this throw an error
module Players
  class Computer < Player
    def move(board)
      #accepts a board and returns the move the computer wants to make in the form of a 1-9 string.
      def empty_cells
        array_of_empty_cells = []
        board.cells.each_with_index do |element,index|
          if element == " "
            array_of_empty_cells << (index+1).to_s
          end
        end
        array_of_empty_cells
      end

      def take_corners_strategy #take these positions: 1,3,9 : 3,7,9: 1,7,9: 1,3,7
        set_1 = ["1","3","9"]
        empty_cells
        #find the first of these numbers that is not in empty_cells and return that element
        next_move = empty_cells.select do |element|
          element == "1" || element == "3" || element == "9"
        end
        if next_move == [] && self.board.cells[4] == " "
          #play the middle if the middle is empty_cells
          next_move = "5"
        else
          #play the first empty cells
          next_move = empty_cells[0]
        end
      end

      #take_corners_strategy


      #strategy: pick the first empty cells

      array_of_empty_cells = []
      board.cells.each_with_index do |element,index|
        if element == " "
          array_of_empty_cells << (index+1).to_s
        end
      end
      array_of_empty_cells[0]

    end #move end
  end #class end

end #module end

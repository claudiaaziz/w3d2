class Game
    def initialize(n, *position)
        @board = Board.new(n)
        @previous_position = [position]
    end

    def make_guess(position)
        if @previous_position.length == 0
            row, col = position
            @grid[row][col] == "face-up"
        else
            @
        end
    end

    def play
        while !@board.won?
            @board.render
            puts "Enter your position, in the form of row, col: "
            input = gets.chomp.split(" ").map(&:to_i)



        end
    end
end
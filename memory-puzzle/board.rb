require_relative "./card.rb"

class Board 
    def intialize(n)
        @grid = Array.new(n) {Array.new(n)}
    end

    def populate
        (0...@grid.length).each do |row|
            (0...@grid.length).each do |col|
                face = ['face-down', 'face-up'].sample
                value = ('A'..'Z').to_a.sample
                @grid[row][col] = Card.new(value,face)
            end
        end
    end

    def render
        @grid.each {|row| puts row.join(' ')}
    end

    def won?
        (0...@grid.length).each do |row|
            (0...@grid.length).each do |col|
                if @grid[row][col].face != "face-up"
                    return false
                end
            end
        end

        true
    end

    def reveal(guessed_pos)
        row = guessed_pos[0]
        col = guessed_pos[1]

        if @grid[row][col].face == "face-down"
            @grid[row][col].reveal
        end
    end


end



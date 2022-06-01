class Board
    attr_reader :size

    def initialize(n)
        @grid = Array.new(n){Array.new(n, :N)}
        @size = n * n

    end

    def [](position)
        @grid[position[0]][position[1]]
    end

    def []=(position, value)
        @grid[position[0]][position[1]] = value
        # @grid[position] = value
    end

    def num_ships
        @grid.flatten.count{ |ele| ele == :S }
    end

    def attack(position)
        if self[position] == :S
            self[position] = :H
            puts "you sunk my battleship!"
            return true
        else 
            self[position] = :X
            return false
        end
    end

    def place_random_ships()
        # should randomly set 25% of the @grid's elements to :S
        # should always set 25% of the @grid's elements based on the @grid's dimensions
    end

    def hidden_ships_grid
        # should return a 2D array representing the grid where every :S is replaced with an :N
        # should not mutate the original @grid
    end

    def self.print_grid(grid)
        # should accept a 2D array representing a grid as an arg
        # should print each row of @grid so every element in a row is separated with a space
    end
    
    def cheat
        Board::print_grid(@grid)
    end

    def print
        Board::print_grid(self.hidden_ships_grid)
    end
    
end

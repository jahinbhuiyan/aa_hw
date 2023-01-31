class Board
    
    def self.print_grid(array)
        array.each do |row|
            puts row.join(" ")
        end
    end 
    
    def initialize(n)
        @n = n 
        @grid = Array.new(n){Array.new(n, :N)}
        @size = n*n 

    end

    def size
        @size
    end

    def [](position_arr)
        row, col = position_arr
        @grid[row][col]
    end

    def []=(position_arr, value)
        row, col = position_arr
        @grid[row][col] = value
    end

    def num_ships
        @grid.flatten.count { |ele| ele == :S}
    end

    def attack(position_arr)
        
        if self[position_arr] == :S
            self[position_arr] = :H 
            puts "you sunk my battleship!"
            return true
        
        else
            self[position_arr] = :X 
            return false
        end 
    end

    def place_random_ships
        total_ships = @size * 0.25
        
        while self.num_ships < total_ships
        rand_row = rand(0...@grid.length)
        rand_col = rand(0...@grid.length)
        position_arr = rand_row, rand_col
        self[position_arr] = :S 
        end
    end

    def hidden_ships_grid
        @grid.map do |row|
            row.map do |ele|
                if ele == :S 
                    ele = :N 
                else
                    ele 
                end
            end
        end
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(hidden_ships_grid)
    end


  
end

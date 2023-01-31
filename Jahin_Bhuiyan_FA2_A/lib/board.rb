class Board

    def initialize(size)
        @size = size
        @grid = Array.new(@size){Array.new(@size)}

    end

    def size
        @size
    end

    def [](position)
        row, col = position 
        @grid[row][col]
    end


    def []=(position, mark)
        row, col = position
        @grid[row][col] = mark
    end

    def complete_row?(mark)
        @grid.each do |subarr|
            flag = true
            subarr.each do |ele|
                if ele != mark
                    flag = false
                end
            end
            if flag == true
                return flag
            end
        end
        return false
    end

    def complete_col?(mark)
        (0...@grid.length).each do |row|
            flag = true
            (0...@grid.length).each do |col|
                if @grid[col][row] != mark
                    flag = false
                end
            end
            if flag == true
                return flag
            end
        end
        return false
    end

    def complete_diag?(mark)
        row = 0
        col = 0
        flag_1 = true
        flag_2 = true
        while row < @grid.length
            if @grid[row][col] != mark
                flag_1 = false
            end
            row += 1 
            col += 1
        end
        row_2 = 0
        col_2 = @grid.length - 1
        while row_2 < @grid.length
            if @grid[row_2][col_2] != mark
                flag_2 = false
            end
            row_2 += 1
            col_2 -= 1
        end
        if flag_1 == true || flag_2 == true
            return true
        else
            return false
        end
        
    end

    def winner?(mark)
        if self.complete_row?(mark) == true || self.complete_col?(mark) == true || self.complete_diag?(mark) == true
            return true
        else
            false
        end
    end

    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @grid.each { |row| p row }
    end
end

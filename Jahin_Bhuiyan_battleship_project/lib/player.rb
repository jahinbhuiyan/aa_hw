class Player
    def get_move
        input_arr = []
        puts "enter a position with coordinates separated with a space like `4 7`"
        
        gets.chomp.split(" ").map(&:to_i)
    end
end
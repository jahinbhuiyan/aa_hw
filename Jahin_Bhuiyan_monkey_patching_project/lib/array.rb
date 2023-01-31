# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

    def span
        return nil if self.length == 0
        self.max - self.min
    end

    def average
        return nil if self.length == 0
        self.sum / (self.length * 1.0)
    end

    def median
        return nil if self.length == 0
        
        if self.length.odd?
        mid_idx = self.length / 2
        self.sort[mid_idx]
        
        else 
            mid_idx = self.length / 2
            first_ele = self.sort[mid_idx]
            second_ele = self.sort[mid_idx - 1]
            return (first_ele + second_ele) / 2.0 
        end
    end

    def counts
        count = Hash.new(0)
        self.each do |ele|
            count[ele] += 1
        end
        return count
    end

    def my_count(value)
        count = Hash.new(0)
        self.each do |ele|
            count[ele] += 1
        end
        return count[value]
    end

    def my_index(value)
        return nil if !self.include?(value)
        self.each_with_index do |ele, idx|
            if ele == value
                return idx
            end
        end
    end

    def my_uniq
        new_arr = []
        self.each do |ele|
            if !new_arr.include?(ele)
                new_arr << ele
            end
        end
        return new_arr
    end

    def my_transpose
        
        new_arr = []

        (0...self.length).each do |row|
            new_row = []
            (0...self.length).each do |col|
                new_row << self[col][row]
            end
            new_arr << new_row
        end
        new_arr
    end

end




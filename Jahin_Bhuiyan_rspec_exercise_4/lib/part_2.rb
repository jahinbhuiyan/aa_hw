

def proper_factors(number)
    new_arr = []
    (1...number).each do |ele|
        if number % ele == 0
            new_arr << ele
        end
    end
    return new_arr
end

def aliquot_sum(number)
    sum = proper_factors(number).sum
    return sum
end

def perfect_number?(number)
    if aliquot_sum(number) == number
        return true
    else
        false
    end
end

def ideal_numbers(n)
    new_arr = []
    
    (1...n).each do |num|
        if perfect_number?(num)
            new_arr << num
        end
    end
    return new_arr
end

# def ideal_numbers(n)
#     nums = []
  
#     i = 1
#     while nums.length < n
#       nums << i if perfect_number?(i)
#       i += 1
#     end
  
#     nums
#   end
########################  PHASE 1 ########################


def strange_sums(array)
    count = 0
    array.each_with_index do |num1 , idx1|
        array.each_with_index do |num2, idx2|
            if idx1 > idx2
            count += 1 if num1 + num2 == 0
            end
        end
    end
    return count 
end

# p strange_sums([2, -3, 3, 4, -2])     # 2
# p strange_sums([42, 3, -1, -42])      # 1
# p strange_sums([-5, 5])               # 1
# p strange_sums([19, 6, -3, -20])      # 0
# p strange_sums([9])                   # 0


def pair_product(array, product)
    
    array.each_with_index do |num1, idx1|
        array.each_with_index do |num2, idx2|
            if idx1 > idx2
                return true if num1*num2 == product
            end
        end
    end
    return false
end

# p pair_product([4, 2, 5, 8], 16)    # true
# p pair_product([8, 1, 9, 3], 8)     # true
# p pair_product([3, 4], 12)          # true
# p pair_product([3, 4, 6, 2, 5], 12) # true
# p pair_product([4, 2, 5, 7], 16)    # false
# p pair_product([8, 4, 9, 3], 8)     # false
# p pair_product([3], 12)             # false

def rampant_repeats(string, hash)
    new_string = ""
    string.each_char do |char|
        if hash.has_key?(char)
            new_string += char * hash[char]
        else
            new_string += char
        end
    end
    return new_string 
end

# p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
# p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
# p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
# p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'

def perfect_square(number)
    i = 1
    while i <= number
        if i*i == number
            return true
        end
        i += 1
    end
    false
end

# p perfect_square(1)     # true
# p perfect_square(4)     # true
# p perfect_square(64)    # true
# p perfect_square(100)   # true
# p perfect_square(169)   # true
# p perfect_square(2)     # false
# p perfect_square(40)    # false
# p perfect_square(32)    # false
# p perfect_square(50)    # false

########## PHASE 2 ##################


def anti_prime?(n)
    max_divisors = 0
    (1...n).each do |i|
    #   divisors = (1..i).count { |x| i % x == 0 }
        divisors = 0
        (1..i).each do |x|
        if i%x == 0
            divisors += 1
        end
    end
      max_divisors = divisors if divisors > max_divisors
    end
    main_divisors = (1..n).count { |x| n % x == 0 }
    # divisors > max_divisors
    if main_divisors > max_divisors 
        return true
    else
        return false
    end
  end

# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false

# arr1 = [[5,6], [7,8]]
def matrix_addition(arr1,arr2)
    new_arr = Array.new(arr1.length){Array.new(arr1[0].length)}
    arr1.each_with_index do |ele1, idx1|
        ele1.each_with_index do |ele2, idx2|
            # 
            new_arr[idx1][idx2] = arr1[idx1][idx2] + arr2[idx1][idx2]
        end
    end
return new_arr
end

# matrix_a = [[2,5], [4,7]]
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]]
# matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]

# def mutual_factors(*numbers)
#     common_divisors = (1..numbers.min).to_a.select do |divisor|
#       numbers.all? { |number| number % divisor == 0 }
#     end
#     return common_divisors
#   end

# def mutual_factors(*numbers)
#     common_divisors = []
#     min_num = numbers.min
#     (1..min_num).each do |num|
#     common_divisors << num if numbers.all? { |n| n % num == 0 }
#     end
#     common_divisors
#     end

def mutual_factors(*numbers)
    common_divisors = []
    #find the lowest number among the arguments
    lowest_number = numbers.min
    #check for divisors of the lowest number
    (1..lowest_number).each do |divisor|
        if lowest_number % divisor == 0
        # check if the divisor is also a divisor of all other arguments
            is_common = true
            numbers.each do |number|
                if number % divisor != 0
                is_common = false
                end
            end
        # if the divisor is a common divisor, add it to the array
            if is_common
                common_divisors << divisor
            end
        end
    end

return common_divisors
end

p mutual_factors(50, 30)            # [1, 2, 5, 10]
p mutual_factors(50, 30, 45, 105)   # [1, 5]
p mutual_factors(8, 4)              # [1, 2, 4]
p mutual_factors(8, 4, 10)          # [1, 2]
p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
p mutual_factors(12, 24, 64)        # [1, 2, 4]
p mutual_factors(22, 44)            # [1, 2, 11, 22]
p mutual_factors(22, 44, 11)        # [1, 11]
p mutual_factors(7)                 # [1, 7]
p mutual_factors(7, 9)              # [1]


def tribonacci_number(n)
    return 0 if n == 0
    return 1 if n == 1 || n == 2
    tribonacci_number(n-1) + tribonacci_number(n-2) + tribonacci_number(n-3)
  end

# p tribonacci_number(1)  # 1
# p tribonacci_number(2)  # 1
# p tribonacci_number(3)  # 2
# p tribonacci_number(4)  # 4
# p tribonacci_number(5)  # 7
# p tribonacci_number(6)  # 13
# p tribonacci_number(7)  # 24
# p tribonacci_number(11) # 274
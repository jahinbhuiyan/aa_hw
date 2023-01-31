####### PHASE :1

def strange_sums(array) 
    count=0
    sum=0
    (0...array.length).each do |idx1|
        (idx1...array.length).each do |idx2|
            sum = array[idx1] + array[idx2]
            if sum == 0
                count += 1
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

def pair_product(array,num)
    product = 0
    (0...array.length).each do |idx1|
        (idx1+1...array.length).each do |idx2|
            product = array[idx1] * array[idx2]
            if product == num
                return true
            end
        end
    end
  return false
end

# p pair_product([4, 2, 5, 8], 16)    #ture
# p pair_product([8, 1, 9, 3], 8)     # true
# p pair_product([3, 4], 12)          # true
# p pair_product([3, 4, 6, 2, 5], 12) # true
# p pair_product([4, 2, 5, 7], 16)    # false
# p pair_product([8, 4, 9, 3], 8)     # false
# p pair_product([3], 12)             #false


def rampant_repeats(string, hash)
    new_string = ""
    string.each_char do |char|
      new_string += char * (hash[char] || 1)
    end
    new_string
  end

# p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
# p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
# p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
# p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'


def perfect_square(number)
    n=1
    while n<=number do
        if n**2 == number
            return true
        end
        n+=1
      
    end
  return false
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



###################### PHASE 2 ##################


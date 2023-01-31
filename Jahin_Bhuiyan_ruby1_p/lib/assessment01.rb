class Array
  # Write an `Array#my_inject` method. If my_inject receives no argument, then
  # use the first element of the array as the default accumulator.
  # **Do NOT use the built-in `Array#inject` or `Array#reduce` methods in your 
  # implementation.**

  def my_inject(accumulator = nil, &prc)

    accumulator = self[0] if accumulator.nil?
    i = accumulator.nil? ? 1 : 0
    for element in self[i..-1]
      accumulator = prc.call(accumulator, element)
    end
    accumulator
  end

end

# Define a method `primes(num)` that returns an array of the first "num" primes.
# You may wish to use an `is_prime?` helper method.

def is_prime?(num)
  
  return false if num <= 1
  (2...num).each do |i|
    return false if num % i == 0
  end
  true
end

def primes(num)
  primes = []
  current_num = 2
  
  while primes.length < num
    if is_prime?(current_num)
      primes << current_num
    end
    current_num += 1
  end
  primes

end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  
  return [1] if num == 1
  prev_numbers = factorials_rec(num-1)
  prev_numbers << prev_numbers.last * (num-1)
end


  

class Array
  # Write an `Array#dups` method that will return a hash containing the indices 
  # of all duplicate elements. The keys are the duplicate elements; the values 
  # are arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    duplicates = Hash.new { |h, k| h[k] = [] }
    each_with_index { |item, index| duplicates[item] << index }
    duplicates.select { |_, indices| indices.length > 1 }
  end
end

class String
  # Write a `String#symmetric_substrings` method that returns an array of 
  # substrings that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings
    (0...length).each do |start_index|
      (start_index...length).each do |end_index|
        substrings << self[start_index..end_index]
      end
    end
    substrings.select { |sub| sub.length > 1 && sub == sub.reverse }
  end
  
end

class Array
  # Write an `Array#merge_sort` method; it should not modify the original array.
  # **Do NOT use the built in `Array#sort` or `Array#sort_by` methods in your 
  # implementation.**
  
  def merge_sort(&prc)
  end

  private
  def self.merge(left, right, &prc)
  end

  # def is_prime?(num)
  #   return false if num <= 1
  #   (2...num).each do |factor|
  #     if num % factor == 0
  #       return false
  #     end
  #   end
  #   true
  # end
  # def primes(num)
  #   return [] if num == 0
  #   primed = []
  #   i = 2
  #   while num > primed.length
  #     if is_prime?(i)
  #       primed << i
  #     end
  #        i += 1
  #   end
  #   primed
  # end
  
  
  
  
  


end

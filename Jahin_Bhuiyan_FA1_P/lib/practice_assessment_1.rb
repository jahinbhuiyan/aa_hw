# Define your methods here. 
def first_letter_vowel_count(sentence)
    vowels = "aeiou"
    words = sentence.split(" ")
    count = 0
    words.each do |word|
      if vowels.include?(word[0].downcase)
        count += 1
      end
    end
    return count
  end


def count_true(array, proc)
    array.count { |ele| proc.call(ele) }
  end


def procformation(array, proc1, proc2, proc3)
    result = []
    array.each do |ele|
      if proc1.call(ele)
        result << proc2.call(ele)
      else
        result << proc3.call(ele)
      end
    end
    result
  end

def array_of_array_sum(array)
    sum = 0
    array.each do |sub_arr|
        sub_arr.each do |ele|
            sum += ele
        end
    end

return sum
end

def selective_reverse(sentence)
    words = sentence.split(" ")
    new_sentence = []
    vowel = "AEIOUaeiou"
    
    words.each do |word|
        
        if vowel.include?(word[0]) || vowel.include?(word[-1])
        new_sentence << word
        
        else
        new_sentence << word.reverse
        end
    end
    return new_sentence.join(" ")
    end

def hash_missing_keys(hash, *keys)
    missing_keys = []
    keys.each do |key|
        missing_keys << key unless hash.key?(key)
        end
        missing_keys
end


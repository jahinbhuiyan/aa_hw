def partition(array, number)
    smaller_array = []
    larger_array = []
    new_array =[]

    array.each do |ele| 
        if ele>= number
            larger_array << ele
         else
            smaller_array << ele
         end
    end
    new_array.push(smaller_array,larger_array)

end

def merge(hash1, hash2)
    new_hash ={}
    hash1.each do |key, value|
        new_hash[key] = value
     end
  
    hash2.each do |key, value|
        new_hash[key] = value
    end
  return new_hash
end


def censor(sentence,array)
    new_sent =[]
    temp_sent= sentence.split(" ")
    temp_sent.each do |word|
        if array.include?(word.downcase)
            new_word = vowel_replace(word)
            new_sent << new_word
        else
            new_sent << word
        end
    end
    new_sent.join(" ")

end

def vowel_replace(word)
    vowels= "AEIOUaeiou"
    new_word= ""
    
    word.each_char do |char|
        if vowels.include?(char.downcase)
        
        new_word+= "*"
        else
          new_word +=char
        end
    
    end
    new_word
    end

    def power_of_two?(number)
        if number < 0
            false
        end
        while number>1
        if number%2 != 0
            return false
        end
        number /= 2
        end
        
        return true
    
    end

    # This function first checks if the given number is less than or equal to 0, and returns false if it is. 
    #Then, it enters a while loop that continues until the number is greater than 1. 
    #Inside the loop, it checks if the number is divisible by 2 (by checking if the remainder of the number divided by 2 is equal to 0).
    # If it is not divisible by 2, it returns false. 
    #If it is, it divides the number by 2 and continues the loop. 
    #If the loop completes without returning false, it means the number is a power of 2 and the function returns true.
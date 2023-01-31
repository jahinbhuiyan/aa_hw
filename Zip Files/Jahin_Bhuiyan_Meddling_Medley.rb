require "byebug"

def duos(string)
    count = 0
    array = string.split("")
    array.each_with_index do |char, idx|
        if array[idx] == array[idx +1]
            count +=1
        end
    end
    return count
end

# def duos(string)
#     count = 0
#     (0...string.length-1).each do |i|
#       count += 1 if string[i] == string[i+1]
#     end
#     count
#   end

# p duos('bootcamp')      # 1
# p duos('wxxyzz')        # 2
# p duos('hoooraay')      # 3
# p duos('dinosaurs')     # 0
# p duos('e')             # 0


def sentence_swap(sentence, hash)
    array = sentence.split(" ")
    new_sent = []
    array.each do |word|
        if hash.has_key?(word)
            new_sent <<  hash[word]
        end
        if !hash.has_key?(word)
            new_sent << word
        end
    end
    return new_sent.join(" ")
end

# p sentence_swap('anything you can do I can do',
#     'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
# )


def hash_mapped(hash, prc, &blk)
    new_hash = Hash.new(0)
    hash.each do |k,v|
        new_hash[blk.call(k)] = prc.call(v)
    end
    return new_hash
end

def counted_characters(string)
    array = string.split("")
    count = Hash.new(0)
    new_arr =[]
    array.each do |char|
        count[char] += 1
    end
    count.each do |k,v|
        if count[k] >2
            new_arr << k 
        end
    end
    return new_arr

end

# p counted_characters("that's alright folks") # ["t"]
# p counted_characters("mississippi") # ["i", "s"]
# p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
# p counted_characters("runtime") # []

l

# def triplet_true(string)
#     string.each_char.with_index do |char, index|
#     return true if char == string[index + 1] && char == string[index + 2]
#     end
#     false
#     end

# p triplet_true('caaabb')        # true
# p triplet_true('terrrrrible')   # true
# p triplet_true('runninggg')     # true
# p triplet_true('bootcamp')      # false
# p triplet_true('e')             # false


def energetic_encoding(string,hash)
    new_string = ""
    string.each_char do |char|
        
        if char == " "
            new_string += char

        elsif hash.has_key?(char)
            new_string += hash[char]
        
        
        else !hash.has_key?(char)
            new_string += "?"
        
        end
    end
    return new_string
end

# def energetic_encoding(str, hash)
#     new_str = ""
#     str.each_char do |char|
#     if char == " "
#     new_str += char
#     elsif hash.has_key?(char)
#     new_str += hash[char]
#     else
#     new_str += "?"
#     end
#     end
#     return new_str
#     end
    
    

# p energetic_encoding('sent sea',
#     'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
# ) 

# p energetic_encoding('cat',
#     'a'=>'o', 'c'=>'k'
# ) # 'ko?'

# p energetic_encoding('hello world',
#     'o'=>'i', 'l'=>'r', 'e'=>'a'
# ) # '?arri ?i?r?'

# p energetic_encoding('bike', {})


def uncompress(string)
    new_string = ""
    string.each_char.with_index do |char , idx|
        if idx.even?
            number = string[idx+1].to_i
            new_string += char * number
        end
    end
    return new_string
end

# def uncompress(string)
#     result = ""
#     i = 0
#     while i < string.length
#     letter = string[i]
#     number = string[i+1].to_i
#     result += letter * number
#     i += 2
#     end
#     return result
#     end

# p uncompress('a2b4c1') # 'aabbbbc'
# p uncompress('b1o2t1') # 'boot'
# p uncompress('x3y1x2z4') # 'xxxyxxzzzz'
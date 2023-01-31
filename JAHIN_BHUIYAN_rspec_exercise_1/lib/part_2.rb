def hipsterfy(word)
    vowels = "aeiou"   #tonic
    new_word =""
    last_vowel = -1

    word.each_char.with_index do |char,idx|
        if vowels.include?(char)
            last_vowel = idx
        
         
            new_word =word[0...last_vowel] + word[last_vowel+1..-1]

        end
     
    end
    if new_word.empty?
        return word

    else
        return new_word
    end
     
end

def vowel_counts(str)
    vowels = "aeiou"
    count = Hash.new(0)
    str.each_char do |char|
        if vowels.include?(char.downcase)
        count[char.downcase]+=1
        end
    end
return count
end


def caesar_cipher(string, num)
    alphabet= ("a".."z").to_a
    new_string = ""
    
    string.each_char do |char|
        if alphabet.include?(char)
            old_index = alphabet.index(char)
            new_index = old_index + num
            new_string += alphabet[new_index%26]

        else
            new_string+= char
        end
     end
     
    return new_string


end
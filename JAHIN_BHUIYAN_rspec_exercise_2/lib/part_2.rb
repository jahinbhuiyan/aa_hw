def palindrome?(string)
    new_str=[]
    arr = string.split("")
    
    arr.each do |char|
    new_str.unshift(char)
    end
    if new_str.join("") == string
        return true
    else
        false
    end
end

def substrings(str)
    output = []
    (0...str.length).each do |i|
      (i...str.length).each do |j|
        output << str[i..j]
      end
    end
    output
  end
  
def palindrome_substrings(string)

    new_array =[]
    temp_array = substrings(string)
    
    temp_array.each do |word|
        if palindrome?(word) && word.length>1
            new_array << word
        end
    end
new_array
end


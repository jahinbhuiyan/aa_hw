require "byebug"

def element_count(array)
    count = Hash.new(0)
    array.each do |ele|
        count[ele] += 1
    end
    return count
end

def char_replace!(string, hash)
    
    
    string.each_char.with_index do |char,idx|
        
        if hash.has_key?(char)   
            string[idx]= hash[char]
        else
            string[idx] = char
        end 
        
    end
    return string
end

def product_inject(array)
    result = array.inject{|accum,ele| accum*ele}
    return result
end
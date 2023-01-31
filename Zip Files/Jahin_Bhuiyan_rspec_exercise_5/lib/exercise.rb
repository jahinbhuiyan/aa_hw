# def zip(*arrays)
#     first_array = arrays.shift
#     first_array.zip(*arrays)
#   end
require "byebug"
def zip(*arr)
    zipped = Array.new(arr[0].length) {Array.new(0)}
    # debugger
    arr.each_with_index do |subarr, i1|
        subarr.each_with_index do |ele, i2|
            zipped[i2] << subarr[i2]
        end
    end
    zipped
    
end

def prizz_proc(array, prc1, prc2)
    
    new_array =[]
    array.each do |ele|
        if prc1.call(ele) && !prc2.call(ele)
            new_array.push(ele)
        end
        if prc2.call(ele) && !prc1.call(ele)
            new_array.push(ele)
        end
    end
    return new_array
end

def zany_zip(*arr)
    length = arr.max_by(&:size).size
    zany = Array.new(length){Array.new(arr.length,nil)}
    arr.each_with_index do |subarr, i1|
        subarr.each_with_index do |ele, i2|
            zany[i2][i1] = ele
        end
    end
    zany    
end
    
def maximum(array, &prc)
    return nil if array.empty?
    max = array[0]  #2
    max_result  = prc.call(max) #4
    array.each do |ele|
        if prc.call(ele) >= max_result  #4>= 4 ..... 16>= 4 .... 25>=16
            max = ele # 2 .... max = 4.... max = -5
            max_result = prc.call(ele) #4 .... 16 .... 25
        end
    end
    return max #swimming
end


def my_group_by(array, &prc)
    hash = Hash.new{|h, k| h[k] = []}
    
    
    array.each do |ele|
        hash[prc.call(ele)] << ele
        
    end
    return hash
end

def max_tie_breaker(array, prc, &blk)
    return nil if array.empty?
    max = array[0]  
    max_result  = blk.call(max) 
    max_result2 = prc.call(max)
    array.each do |ele|
        if blk.call(ele) > max_result  
            max = ele 
            max_result = blk.call(ele) 
        end
        if blk.call(ele) == max_result
            if prc.call(ele) > max_result2 
                max = ele
            end
        end    
    end
return max

end

def silly_syllables(sentence)
    array= sentence.split(" ")
    res = []
    array.each do |word|
        res.push(vowels?(word))
    end
    return res.join(" ")
end


def vowels?(word)
    vowels = "AEIOUaeiou"
    first_idx = -1
    second_idx = -1
    word.each_char.with_index do |char,idx|
        if vowels.include?(char)
            if first_idx != -1
                second_idx = idx
            end
            if first_idx == -1
                first_idx = idx
            end
            
        end
    end
    if second_idx == -1
        return word
    end

    return word[first_idx..second_idx] 
    
end



def my_reject(array, &prc)
    array.select{|ele| !prc.call(ele)}
end

def my_one?(array, &prc)
    new_array=[]
    array.each do |ele|
        if prc.call(ele)
            new_array << ele
        end
    end
    if new_array.length != 1
        return false
    end
    return true    
end

def hash_select(hash, &prc)
    new_hash={}
    hash.each do |k,v|
        if prc.call(k,v)
            new_hash[k]=v
        end
    end
    return new_hash
end

def xor_select(array, prc1 , prc2)
    new_arr =[]
    array.each do |ele|
        if prc1.call(ele) && !prc2.call(ele)
            new_arr << ele
        end
        if prc2.call(ele) && !prc1.call(ele)
            new_arr << ele
        end
    end
    return new_arr
end




# def proc_count(value, procs)
#     procs.count { |proc| proc.call(value) }
#   end

def proc_count(val, arr)
    
    count = 0
    arr.each do |proc|
        if proc.call(val) 
            count += 1
        end
    end
    count
end

# def sum_to_n(n)
#     return nil if n< 1
#     return n if n == 1
#     n + sum_to_n(n-1)
# end

# def add_number(num_array)
#     return nil if num_array.length = 0
#     return num_array.first if num_array.length = 1
#     num_array.first + add_number(num_array)
# end


# def gamma_function(n)
#     return nil if n < 1
#     return n if n = 1
#     (n-1) * gamma_function(n-1)
# end

# def ice_cream_shop(flavors, favorite)
#     return false if flavors.length = 0
#     return true if flavors.last == favorite

#     ice_cream_shop(flavors[0...-1], favorite)
# end

# def reverse(string)
#     return "" if string.empty?
#     reverse(string[1..-1]) + string[0]
#   end







def sum_to_n(n)
    return nil if n < 1
    return n if n == 1
    n + sum_to_n(n-1)
end


def add_number(arr)
    return nil if arr.empty?
    return arr.first if arr.length = 1

    arr.first + add_number(add_number)
end

def gamma_function(n)
    return nil if n == 0
    return n if n == 1
    (n-1)*gamma_function(n-1)
end

def ice_cream_shop(flavors, favorite)
    return false if flavors.empty?
    return true if arr.last == favorite
    ice_cream_shop(flavors[0...-1], favorite)
end

def reverse_string (str)
    return str if str.length <=1

    str[-1] + reverse_string(str[0..-2])
end
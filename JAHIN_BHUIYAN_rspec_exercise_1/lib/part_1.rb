def average(num1,num2)
(num1+num2)/2.0

end

def average_array(arr)
    arr.inject(0.0) { |sum, el| sum + el } / arr.size
end

def repeat(str,num)
    str*num

end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    newstr = []
    words = str.split
    words.each.with_index do |word, i|
        if i.even?
            newstr << word.upcase
        else
            newstr << word.downcase
        end
    end
    newstr.join(" ")

end
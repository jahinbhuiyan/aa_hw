# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    facts = []
    (1..num).each do |i|
        if num % i ==0 && prime?(i) 
            facts << i
        end
    
    end
    facts.each do |ele|
    
    end
end

def prime?(num)
    if num<2
        return false
    end

    (2...num).each do |i|

        if num % i ==0
        return false
        end
    end
    return true

end
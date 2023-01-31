require "byebug"

def is_prime?(number)
    if number < 2
        return false
    end

    (2...number).each do |n|
        if number % n == 0 
            return false
        end
    end

    if number%1==0 && number%number == 0
        return true
    end

end

def nth_prime(n)
    primes=[]
    num =2
    while primes.length <n
        # debugger
        if is_prime?(num)
            primes << num
        end
        num += 1
    end
    return primes[-1]
end


def prime_range(min, max)
    primes = []
   
    (min..max).each do |ele|
        if is_prime?(ele)
            primes << ele
        end
    end
    return primes
end


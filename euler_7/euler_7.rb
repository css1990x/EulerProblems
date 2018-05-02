def ten_thousand_first_prime
    primes = [2] 
    i = 3 
    until primes.length == 10001 
        if !primes.any?{ |n| i % n == 0 } 
            primes << i 
            i += 2 
        else 
            i += 2 
        end 
    end 
    return "the solution to euler 7 is #{primes[-1]} " 
end 

p ten_thousand_first_prime
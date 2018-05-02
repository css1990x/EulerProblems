def is_prime(n)
    (2..Math.sqrt(n).ceil).each do |i| 
        if (n % i) == 0 
            return false 
        end 
    end 
    true 
end 

def euler_10
    prime_ary = [2]
    i = 3 
    until prime_ary[-1] > 2000000
        if is_prime(i)
            prime_ary << i 
            i += 2 
        else 
            i += 2 
        end 
    end 
    return "the solution to euler 10 is #{prime_ary.reduce(:+) - prime_ary[-1]} "
end 

p euler_10
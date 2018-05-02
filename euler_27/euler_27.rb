
def is_prime?(n)
    if n < 2 
        return false 
    elsif ((n == 2) || (n == 3))
        return true 
    end 
    (2..Math.sqrt(n).ceil).each do |i| 
        if (n % i) == 0 
            return false  
        end 
    end
    true 
end 

def all_primes_and_one(n)
    primes = []
    (2..n).each do |i| 
        if is_prime?(i)
            primes << i
            primes << -i
        end 
    end 
    primes << 1
    primes << -1 
    return primes.sort
end 

def euler_27 
    variables = all_primes_and_one(1000)
    max_sequence = 0
    coeficcient_prod = 0 
    variables.each do |i|
        variables.each do |n| 
            l = 0 
            until !is_prime?((l ** 2) + (i * l) + n)
                l += 1 
            end 
            if (l > max_sequence)
                max_sequence = l 
                coeficcient_prod = (i * n)
            end 
        end 
    end 
    return "the solution to euler 27 is #{coeficcient_prod}"
end

p euler_27

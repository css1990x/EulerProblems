def factor_ary(n)
    factors = []
    (1..Math.sqrt(n).ceil).each do |i| 
        if (n % i) == 0 
            factors << i
            factors << (n / i)
        end 
    end 
    return factors.uniq 
end 

def is_prime(n)
    if n < 2 
        return false 
    elsif n == 2 
        return true 
    end 
    (2..Math.sqrt(n).ceil).each do |i| 
        if (n % i) == 0 
            return false 
        end 
    end 
    true 
end 

def euler_3 
    factors = factor_ary(600851475143)
    factors.select! do |i| 
        is_prime(i)
    end 
    return "the solution to euler 3 is #{factors.max} " 
end 

p euler_3
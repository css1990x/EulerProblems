def factor_sum(n)
    factors = []
    (1..Math.sqrt(n).ceil).each do |i| 
        if (n % i == 0)
            factors << i 
            factors << (n / i) unless (i == 1)
        end 
    end 
    return factors.uniq.reduce(:+)
end 

def euler_21 
    amicables = []
    (1..10000).each do |i| 
        if (factor_sum(factor_sum(i)) == i) && (i != factor_sum(i))
            amicables << i 
            amicables << factor_sum(i)
        end 
    end 
    return "solution to euler 21 is #{amicables.uniq.reduce(:+)} "
end 

p euler_21
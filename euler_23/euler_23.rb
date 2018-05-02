require 'set'
def find_factors_sum(n)
    factors = []
    (1..Math.sqrt(n)).each do |i| 
        if (n % i) == 0
            factors << i 
            factors << (n / i) unless (i == 1) 
        end 
    end 
    return factors.sort.uniq.reduce(:+)
end 

def is_abundant?(n)
    if find_factors_sum(n) > n 
        return true 
    end 
    false 
end 

def euler_23 
    first_set = (1..28123).to_set 
    second_set = Set.new []
    abundants = (1..28123).select { |i| is_abundant?(i) } 
    abundants.each do |j|
        abundants.each do |l| 
            if (j + l) < 28124 
                second_set.add(j + l)
            end 
        end 
    end 
    return "the solution to euler 23 is #{first_set.to_a.sort.reduce(:+) - second_set.to_a.sort.reduce(:+) } "
end 

p euler_23

def divisors(n)
    divisor_ary = []
    (1..Math.sqrt(n).ceil).each do |i| 
        if (n % i == 0) 
            divisor_ary << i 
            divisor_ary << (n / i)
        end 
    end 
    return divisor_ary.uniq.length 
end 

def euler_12 
    triangle_sequence = [1]
    until divisors(triangle_sequence[-1]) > 500 
        triangle_sequence << (triangle_sequence[-1] + (triangle_sequence.length + 1))
    end 
    return "the solution to euler 12 is #{triangle_sequence[-1]}"
end 

p euler_12
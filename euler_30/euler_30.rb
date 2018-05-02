def digits_to_fifth(n)
    ary = [] 
    n_s = n.to_s 
    n_s.chars.each do |c| 
        ary << (c.to_i ** 5)
    end 
    ary.reduce(:+)
end 

def euler_30 
    sum = 0
    (1..295245).each do |i| 
        if digits_to_fifth(i) == i 
            sum += i unless i == 1
        end 
    end 
    return "the solution to euler 30 is #{sum} "  
end 

p euler_30
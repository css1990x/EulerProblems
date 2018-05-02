def digits
    (1..100).to_a.reduce(1, :*)
end 

def digit_sum 
    sum_chars = digits.to_s.chars 
    sum_chars.map! do |i| 
        i = i.to_i 
    end 
    return "the solution to euler 20 is #{sum_chars.reduce(:+)} "
end 

p digit_sum
def euler_16 
    sum_s = (2 ** 1000).to_s 
    blank = []
    sum_s.chars.each do |i| 
        blank << i.to_i 
    end
    return "the solution to euler 16 is #{blank.reduce(:+)} "
end 

p euler_16
def euler_5 
    i = 2520
    until (11..20).all? { |n| (i % n) == 0 } 
        i += 20 
    end
    return "the solution to euler 5 is #{i}"
end 

p euler_5
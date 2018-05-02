def four_corners_sum(n)
    sans = (n - 1)
    sum = ((n ** 2) + ((n ** 2) - sans) + ((n ** 2) - (sans * 2)) + 
    ((n ** 2) - (sans * 3)))
    return sum 
end 

def euler_28
    sum = 1 
    i = 3 
    until i > 1001 
        sum += four_corners_sum(i)
        i += 2 
    end 
    return "the solution to euler 28 is #{sum} "  
end 

p euler_28
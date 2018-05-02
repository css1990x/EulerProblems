def sum_squares_to_100
    i = 1 
    sums_ary = []
    while i < 101 
        sums_ary << (i * i)
        i += 1 
    end 
    return sums_ary.reduce(:+)
end 

def sum_100
    sum = (1..100).to_a.reduce(:+)
    return (sum * sum)
end 

def euler_6  
    return "the solution to euler 6 is #{(sum_100 - sum_squares_to_100)} " 
end 

p euler_6
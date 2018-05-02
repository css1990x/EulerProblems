def euler_24 
    ary = (0..9).to_a 
    return "the solution to euler 24 is #{ary.permutation(10).to_a[999999].join("")} " 
end 
 
p euler_24 
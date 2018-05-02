def euler_9
    (1...500).to_a.each do |a|
        (1...500).to_a.each do |b|
            (1...500).to_a.each do |c| 
                if ((a ** 2) + (b ** 2) == (c ** 2)) && ((a + b + c) == 1000)
                    return "the solution to euler 9 is #{(a * b * c)} "
                end 
            end 
        end 
    end 
end 

p euler_9
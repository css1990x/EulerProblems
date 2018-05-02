def remainder(r, divisor)
    until (r > divisor)
        r = (r * 10)
    end 
    return (r % divisor)
end 

p remainder(2, 983)

def find_cycle(n)
    cycle_ary = []
    rem = remainder(1, n)
    until rem == 0 
        if cycle_ary.include?(rem)
            return cycle_ary.length 
        else 
            cycle_ary << rem 
            rem = remainder(rem, n)
        end 
    end 
    return 0 
end 

def eueler_26 
    return "the solution to euler 26 is #{(1..1000).to_a.max_by { |n| find_cycle(n) } }"
end 

p eueler_26
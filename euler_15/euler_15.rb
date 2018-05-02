def pascal(n)
    if n == 1 
        return [1] 
    elsif n == 2 
        return [1, 1]
    end
    new = []
    until new.length == (n - 2)
        prev_pascal = pascal(n - 1)
        i = 0 
        while (i + 1) < prev_pascal.length 
            new << (prev_pascal[i] + prev_pascal[i + 1])
            i += 1 
        end
    end 
    return [1, new, 1].flatten
end 

p pascal(12)

def euler_15 
    return "the solution to euler 15 is #{pascal((20 * 2) + 1).max} " 
end 

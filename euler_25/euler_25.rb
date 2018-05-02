def thousand_digit_index 
    fib = [1, 1]
    until fib[-1].to_s.length >= 1000
        fib << (fib[-1] + fib[-2])
    end 
    return "the solution to euler 25 is #{fib.length} "
end 

p thousand_digit_index
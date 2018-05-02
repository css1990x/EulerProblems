def find_collatz_sequence(n)
    collatz_count = 0
    until n == 1 
        if n.odd? 
            n = ((n * 3) + 1)
            collatz_count += 1 
        elsif n.even? 
            n = (n / 2)
            collatz_count += 1 
        end 
    end 
    return collatz_count
end 

p find_collatz_sequence(999999)

def euler_14 
    best_collatz = 1000000
    collatz = 152 
    i = 1 
    while i < 1000000
        if (find_collatz_sequence(i) > collatz)
            best_collatz = i 
            collatz = find_collatz_sequence(i)
        end 
        i += 1 
    end 
    return "the solution to euler 14 is #{best_collatz}"
end 

p euler_14 
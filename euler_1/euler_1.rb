def threes_and_fives_to_onek
    i = 0 
    fizz_buzz = 0
    while i < 1000
        if (i % 3 == 0) || (i % 5 == 0)
            fizz_buzz += i
        end
        i += 1 
    end 
    return "the solution to euler 1 is #{fizz_buzz} "
end 

p threes_and_fives_to_onek
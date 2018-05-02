def three_factors_i(n)
    (101..999).each do |i|
        if (101..999).any? { |l| (l * i) == n } 
            return true 
        end 
    end 
    false 
end 

p three_factors_i(999999999)

def is_palindromic(n)
    if n.to_s.reverse.to_i == n 
        return true 
    end 
    false 
end 

p is_palindromic(997798)

def max_three_digit_palindromic
    max = (999 * 999)
    while max >= (100 * 100)
        if is_palindromic(max) && three_factors_i(max)
            return "the solution to euler 4 is #{max} " 
        end 
        max -= 1 
    end 
end 

p max_three_digit_palindromic
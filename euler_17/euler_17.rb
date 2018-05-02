def convert_to_english(n)
    if n == 1 
        return "one"
    elsif n == 2 
        return "two"
    elsif n == 3 
        return "three"
    elsif n == 4 
        return "four"
    elsif n == 5 
        return "five"
    elsif n == 6 
        return "six"
    elsif n == 7 
        return "seven"
    elsif n == 8 
        return "eight"
    elsif n == 9 
        return "nine"
    elsif n == 10 
        return "ten"
    elsif n == 11 
        return "eleven"
    elsif n == 12 
        return "twelve"
    elsif n == 13 
        return "thirteen"
    elsif n == 14 
        return "fourteen"
    elsif n == 15 
        return "fifteen"
    elsif n == 16 
        return "sixteen"
    elsif n == 17 
        return "seventeen"
    elsif n == 18 
        return "eighteen"
    elsif n == 19 
        return "nineteen"
    elsif n == 20 
        return "twenty"
    elsif n == 30 
        return "thirty"
    elsif n == 40 
        return "forty"
    elsif n == 50 
        return "fifty"
    elsif n == 60 
        return "sixty"
    elsif n == 70 
        return "seventy"
    elsif n == 80 
        return "eighty"
    elsif n == 90 
        return "ninety"
        
    end 
end 

def every_number_below_1k(n)
    if n < 21 
        return convert_to_english(n)
    elsif n < 100 && (n % 10 == 0)
        return convert_to_english(n)
    elsif n < 100 
        return convert_to_english(n - (n % 10)) + "-" + convert_to_english(n % 10)
    end 
    if (n > 99) && (n < 1000) && ((n % 100) == 0)
        return convert_to_english(n / 100) + " hundred"
    elsif (n > 99) && (n < 1000) && ((n % 100) < 21)
        return convert_to_english(n / 100) + " hundred" + " and " + convert_to_english(n % 100)
    elsif (n > 99) && (n < 1000) && ((n % 10) == 0)
        return convert_to_english(n / 100) + " hundred" + " and " + convert_to_english(n % 100)
    elsif (n > 99) && (n < 1000)
        return convert_to_english(n / 100) + " hundred" + " and " + 
        convert_to_english((n % 100) - (n % 10)) + "-" + convert_to_english(n % 10)
    elsif (n == 1000)
        return "one thousand"
    end 
end 

p every_number_below_1k(922)

def letter_count(string)
    alphabet = ("a".."z").to_a 
    count = 0 
    string.chars.each do |c|
        if alphabet.include?(c.downcase)
            count += 1 
        end 
    end 
    return count 
end 

p letter_count(every_number_below_1k(922))

def euler_17 
    count = 0 
    (1..1000).each do |i| 
        count += letter_count(every_number_below_1k(i))
    end 
    return "the solution to euler 17 is #{count}"
end 

p euler_17
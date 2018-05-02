def name_score(name)
    sum = 0
    alphabet = ("a".."z").to_a 
    name.chars.each do |c| 
        if alphabet.include?(c.downcase) 
            sum += (alphabet.index(c.downcase) + 1)
        end 
    end  
    return sum  
end 

p name_score("Andrew")

def euler_22 
    names_file = File.open("euler22_names.txt").gets 
    sorted_names = names_file.split(",").sort 
    sum = 0 
    i = 0
    while i < sorted_names.length 
        sum += (name_score(sorted_names[i]) * (i + 1))
        i += 1 
    end 
    return "the solution to euler number 22 is #{sum}" 
end 

p euler_22
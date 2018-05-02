require 'set'

def euler_29 
    combo_ary = Set.new []
    (2..100).each do |a|
        (2..100).each do |b| 
            combo_ary.add(a ** b)
        end 
    end 
    return "the solution to euler 29 is #{combo_ary.to_a.length} " 
end 

p euler_29
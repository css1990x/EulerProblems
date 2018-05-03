def euler_31 
    coins = [1, 2, 5, 10, 20, 50, 100, 200];
    total = 200; 
    count = 0; 
    stack = [[total, 0]];
    while stack.length > 0
        popped = stack.pop
        if popped[0] === 0; 
            count += 1; 
        elsif popped[0] > 0; 
            i = popped[1]; 
            while i < coins.length
                stack << [(popped[0] - coins[i]), i]
                i += 1
            end 
        end
    end 
    return count
end 

p euler_31
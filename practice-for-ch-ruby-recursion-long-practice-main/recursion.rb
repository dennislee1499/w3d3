def range_iterative(first, last)
    sums = 0
    (first...last).each do |i|
        sums += i
    end

    sums
end

def range_recursive(first, last)
    return [] if last <= first
    return first if first == last - 1
    
    range_recursive(first, last-1) + (last-1)

    # arr = (first...last).to_a
    # arr.first + range_recursive(first + 1, last)


end

# []   
# range_recursive (1,1) # [1] return 1 
#range_recursive(1,2) return 1 
# range_recursive(1,3) [1, 2] return 6
# 

#



def range_iterative(first, last)
    sums = 0
    (first...last).each do |i|
        sums += i
    end

    sums
end

def range_recursive(first, last)
    return [] if last < first
    return first if arr.length == 1
    arr = (first...last).to_a
    arr[0]
end

# []   
# [1] return 1
# [1, 2] return 3
# [1, 2, 3] return 6

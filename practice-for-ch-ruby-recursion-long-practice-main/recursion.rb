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

def exp(b, p)
    return 0 if b == 0
    return 1 if p == 0
    # return 1 if b == 1
    b * exp(b, p - 1)
end

def exp2(b, p)
    return 0 if b == 0
    return 1 if p == 0
    return b if p == 1
    if p % 2 == 0
        exp2(b, p/2) **2
    else
        b * (exp2(b, (p-1)/2)**2)
    end
end

class Array
    def deep_dup

    end
end

# iterate through outer array 
# want to copy all arrays
#  want to shovel elements into array without modifying og
# if element of array is an array, perform deep dup 
# if ele != arr, add to outermost arr
# if subarr.length == 0 then return [] - basecase1
# if subarr.length == 1 then return subbarr[0] - basecase2

def dup(arr)
    

    new_arr = []
    return [] if arr.empty?
    arr[-1] + dup[0...-1] 
end


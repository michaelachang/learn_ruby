def add a, b
    a + b
end

def subtract a, b
    a - b
end

def sum array
    res = 0

    if array.empty?
        0
    else
        array.each do |v|
            res += v
        end
    end

    res
end
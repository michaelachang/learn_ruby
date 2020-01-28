def echo input
    input
end

def shout input
    input.upcase
end

def repeat input, num = 2
    string = ""

    num.times do |i|
        string = string + input
        if i != num - 1
            string = string + " "
        end
    end

    string
end

def start_of_word input, num
    input[0, num]
end

def first_word input
    words = input.split(" ")
    words [0]
end

def titleize input
    words = input.split(" ")

    output = ""
    words.each_with_index do |x, index|
        if index == 0
            output = output + x.capitalize
        elsif x == "and" || x == "or" || x == "over" || x == "the"
            output = output + x
        else
            output = output + x.capitalize
        end

        if x != words[words.length - 1]
            output = output + " "
        end
    end

    output
end
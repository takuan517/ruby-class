array = []

while true
    puts "Type number:"

    num = gets.to_i

    if num == 0

        array_length = array.length
        reversed_array = []

        for i in 0..array.length
            reversed_array.push(array.pop)
        end

        puts reversed_array
    
        break
    else
        array.push(num)
    end
end
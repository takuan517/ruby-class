def isNotDivisible(num) 

    for i in 2...num -1 
        if num % i == 0
            return false
        end
    end

    return true
end


begin
    puts "Type number:"

    num = gets.to_i

    if num <= 2
        raise RuntimeError
    end

    if isNotDivisible(num)
        puts "YES"
    else
        puts "NO"
    end

rescue RuntimeError
    puts "2以外を入力"
    retry
end
input = gets.to_i



def genRowStr(maxNum, starNum) 
    space_str = ""
    star_str = ""

    for i in 1..(maxNum - starNum)/2
        space_str += " "
    end

    for i in 1..starNum
        star_str += "*"
    end

    return space_str + star_str

end


def isEvenNum(num)
    if num % 2 == 0
        return true
    else
        return false
    end
end



for i in 1..input
    max = input

    if isEvenNum(input)
        max = input + (input - 1)
    else
        max = input * 2
    end

    if i == 1 then
        puts genRowStr(max, i)
    elsif
        puts genRowStr(max, i + (i - 1))
    end
end
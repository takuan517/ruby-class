class Student
    
    def initialize(name, univ, faculty)
        @name = name
        @univ = univ
        @faculty = faculty
    end

    def affiliation
        return @univ + @faculty
    end

    def name
        return @name
    end
end


class PStudent < Student
    def initialize(name)
        @name = name
        @univ = "Keio University"
        @faculty = "Environment of Information Studies"
    end
end



class EStudent < Student
    def initialize(name)
        @name = name
        @univ = "Keio University"
        @faculty = "Policy Managenet"
    end
end

if __FILE__ == $0
    taro = PStudent.new('太郎')
    hanako = EStudent.new('花子')
    puts "#{taro.name}は#{taro.affiliation}の学生です。"
    puts "#{hanako.name}は#{hanako.affiliation}の学生です。"
end
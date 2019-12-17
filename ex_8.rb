class Account
 
    def initialize
        @amount = 0
    end
 
    def deposit(a)
        @amount += a
    end
 
    def withdraw(a)
        unless @amount < a
            @amount -= a
        else
            self.error()
        end
    end
 
    def balance
        puts @amount
    end
 
    def transfer(to, amount)
        unless @amount < amount
            to.deposit(amount)
        else
            self.error()
        end
    end

    def error
        puts "Short blance"
    end

end



if __FILE__ == $0
    puts "aの口座"
    a = Account.new

    puts "#の口座に3000円預ける"
    a.deposit(3000)

    puts "bの口座"
    b = Account.new

    puts "bの口座に1000円預ける"
    b.deposit(1000)

    puts "bの口座から500円引き出す"
    b.withdraw(500)

    puts "aの口座からbの口座に2000円振り込む"
    a.transfer(b, 2000)

    puts "aの口座残高を表示"
    puts a.balance

    puts "bの口座残高を表示"
    puts b.balance

    puts "bの口座からaの口座に5000円振り込む"
    b.transfer(a, 5000)


    puts "aの残高"
    puts a.balance


    b.deposit(10000)

    puts "aの残高"
    b.transfer(a, 5000)
    puts a.balance
end
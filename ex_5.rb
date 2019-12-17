dictionary = { 'dog' => '犬', 'cat' => '猫' }

while true
    print '英語：'

    en = gets.chomp

    if en == "CONSOLE:FINISH"
        break
    end

    if dictionary[en]
        puts "日本語：#{dictionary[en]}"
    else
        puts en + "の日本語を教えてください。"
        jp = gets.chomp
        dictionary[en] = jp.force_encoding("UTF-8")
    end
end
require 'open-uri'


$dl_url = "http://web.sfc.keio.ac.jp/~hattori/script-lang/words.txt"


def downloadFromCNS()
    fname = File.basename($dl_url)

    open(fname, 'wb') { |output|
        open($dl_url) { |data|
            output.write(data.read)
        }
    }
end


unless FileTest.exist?('./words.txt') then
    downloadFromCNS()
end



words = []

open("./words.txt") { |f|
    f.each_line { |line|
        words[f.lineno - 1] = line
    }
}


puts words.max_by { |line|
    line.size
}
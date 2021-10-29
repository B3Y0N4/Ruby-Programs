print "Metini şifrelemek istediniz anahtari giriniz:"
key = gets.chomp.to_i
mesaj = File.readlines("mesaj.txt")
mesaj.each do |line|
    i = 0
    line.each_char do |harf|
        if harf.ord >= 65 && harf.ord <= 90 
            position = harf.ord + key
            if position > 90
                until position <= 90
                    position = (position - 91) + 65
                end 
                line[i] = position.chr
            else
                line[i] = position.chr
            end 
        elsif harf.ord >= 97 && harf.ord <= 122 
            position = harf.ord + key
            if position > 122
                until position <= 122
                    position = (position - 91) + 65
                end 
                line[i] = position.chr
            else
                line[i] = position.chr
            end 
        end 
        i += 1
    end
end  
puts "Mesajiniz şeifrelenildi"
File.open("mesaj.txt", "w") do |file|
    mesaj.each do |satir|
        file << satir
    end 
end 

print "Şifreyi Çözmek için 1 tiklayiniz"
islem = gets.chomp.to_i
    if islem == 1
        anahtar = key
        mesaj = File.readlines("mesaj.txt")
        mesaj.each do |line|
            i = 0
            line.each_char do |harf|
                if harf.ord >= 65 && harf.ord <= 90 
                    position = harf.ord - anahtar
                    if position > 90
                        until position <= 90
                            position = (position - 91) + 65
                        end 
                        line[i] = position.chr
                    else
                        line[i] = position.chr
                    end 
                elsif harf.ord >= 97 && harf.ord <= 122 
                    position = harf.ord - anahtar
                    if position > 122
                        until position <= 122
                            position = (position - 91) + 65
                        end 
                        line[i] = position.chr
                    else
                        line[i] = position.chr
                    end 
                end 
                i += 1
            end
        end  
    end 
    puts "Şifrenizi geri çözdunuz"
File.open("mesaj.txt", "w") do |file|
    mesaj.each do |satir|
        file << satir
    end 
end 



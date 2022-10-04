#Yanliş Yöntem 
print "sayi Giriniz: "
sayi = gets.chomp.to_i
sayac = 1
loop do
    if sayac >= 1 && sayac <=9
           print " #{sayac}"
    end 
    if sayac >= 12 && sayac <=89
        sayac = 12 
        loop do
            print " #{sayac }" 
            sayac += 11
            if sayac > 89
                break 
            end
        end
    end 
    if sayac >= 123 && sayac <= 789
        sayac = 123
        loop do
            print " #{sayac }" 
            sayac += 111
            if sayac > 789
                break 
            end
        end
    end
    if sayac >=1234 && sayac <=6789
        sayac = 1234
        loop do 
            print " #{sayac }"
            sayac += 1111
            if sayac > 6789
                break 
            end 
        end 
    end 
    if sayac >=12345 && sayac <=56789
        sayac = 12345
        loop do 
            print " #{sayac }"
            sayac += 11111
            if sayac > 56789
                break 
            end 
        end 
    end 
    if sayac >=123456 && sayac <=sayi
        sayac = 123456
        loop do 
            print " #{sayac }"
            sayac += 111111
            if sayac > sayi
                break 
            end 
        end 
    end 
    sayac += 1
    if sayac > sayi 
        break
    end
end  
# nokta girene kadar kelimeleri girip son kelime nokta ile biteceğini göz önune alarak
kelime_sayisi = 0
test = true
loop do
    print "Kleime giriniz "
    kelime = gets.chomp
    kelime.each_char {|karakter|
     if karakter.ord == 32
        kelime_sayisi += 1
     end 
        if karakter.ord == 46
            test == false
           break
        end
    }  
     if kelime == 1
        break
    end 
     
        break 
    
end
print kelime_sayisi 
  
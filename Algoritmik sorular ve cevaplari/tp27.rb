print "Sayi Giriniz: "
sayi = gets.chomp.to_i
sayac = 2
terim_sayisi = 1
loop do 
    x = 0
    for i in 1..terim_sayisi do
        if terim_sayisi % i == 0
            x += 1
        end
    end
    if x >= sayi
        puts "#{sayac - 1}.terim #{terim_sayisi}"
        break
    end
    terim_sayisi = terim_sayisi + sayac 
    sayac += 1  
    
end
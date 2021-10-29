#Girilen sayinin karakter halini yazan program
birler_dizi = ["","bir","iki","uç","dort","beş","alti","yedi","sekiz","dokuz"]
onlar_dizi = ["","on","yirmi","otuz","kirk","elli","altmiş","yetmiş","seksan","doksan"]
yuzler_dizi = ["","yüz","ikiyüz","uçyüz","dortyüz","beşyuz","altiyüz","yediyüz","sekizyüz","dokuzyüz"]
print "Sayi Giriniz: "
sayi = gets.chomp.to_i
while sayi != -1
        if sayi >= 1 && sayi <= 9
             birler_basamak = sayi
              puts birler_dizi[birler_basamak]
        elsif sayi >= 10 && sayi <= 99
               birler_basamak = sayi % 10
               onlar_basamak = sayi / 10
                puts "#{onlar_dizi[onlar_basamak]} #{birler_dizi[birler_basamak]}"
        elsif sayi >= 100 && sayi <= 999
                yuzler_basamak = sayi / 100
                onlar_basamak = (sayi % 100) / 10
                birler_basamak = sayi % 10
                 puts "#{yuzler_dizi[yuzler_basamak]} #{onlar_dizi[onlar_basamak]} #{birler_dizi[birler_basamak]}"
        end
        print "Sayi Giriniz: "
        sayi = gets.chomp.to_i
end 


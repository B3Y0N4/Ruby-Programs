toplam = 0
print "harf olarak sayi giriniz: "
karakter = gets.chomp.gsub!(/\s+/, '')
print "Sayi Giriniz: "
sayi = gets.chomp.to_i
sayac = 1
while sayac < 9999
    birler_basamagi = ["","bir","iki","uc","dort","bes","alti","yedi","sekiz","dokuz"]
    onlar_basamagi = ["","on","yirmi","otuz","kirk","elli","altmıs","yetmis","seksen","doksan"]
    yuzler_basamagi =["","yuz","ikiyuz","ucyuz","dortyuz","besyuz","altiyuz","yediyuz","sekizyuz","dokuzyuz"]
    binler_basamagi =["","bin","ikibin","ucbin","dortbin","besbin","altibin","yedibin","sekizbin","dokuzbin"]
    if sayac >= 1 &&  sayac <=9
         i = birler_basamagi[sayac]
         sayac += 1
    elsif sayac >= 10 && sayac <= 99
         onlar_dizi = sayac / 10
         birler_dizi = sayac % 10
         i = onlar_basamagi[onlar_dizi] + birler_basamagi[birler_dizi]
         sayac += 1
    elsif sayac >= 100 && sayac <=999
         yuzler_dizi = sayac / 100
         onlar_dizi = (sayac % 100) / 10
         birler_dizi = (sayac % 100) % 10
         i = yuzler_basamagi[yuzler_dizi] + onlar_basamagi[onlar_dizi] + birler_basamagi[birler_dizi]
         sayac += 1
    elsif sayac >= 1000 && sayac <= 9999
        binler_dizi = sayac / 1000
        yuzler_dizi = (sayac % 1000) / 100
        onlar_dizi = (sayac % 100) / 10 
        birler_dizi = sayac % 10
        i = binler_basamagi[binler_dizi] + yuzler_basamagi[yuzler_dizi]+ onlar_basamagi[onlar_dizi] + birler_basamagi[birler_dizi]
        sayac += 1
    else 
        print "Girmiş oldunuz sayi 9999 dan buyuk olduğu için işlem yapamiyoruz"
    end 
    if  i == karakter
        sum = sayac - 1
        puts "Karakterle girdiniz sayi = #{sum}"
        toplam = sum + sayi
        break
    end 
 end
 birinci_basamagi = ["","bir","iki","uc","dort","bes","alti","yedi","sekiz","dokuz"]
 onuncu_basamagi = ["","on","yirmi","otuz","kirk","elli","altmıs","yetmis","seksan","doksan"]
 yuzuncu_basamagi =["","yuz","ikiyuz","ucyuz","dortyuz","besyuz","altiyuz","yediyuz","sekizyuz","dokuzyuz"]
 bininci_basamagi =["","bin","ikibin","ucbin","dortbin","besbin","altibin","yedibin","sekizbin","dokuzbin"]
 if toplam >= 1 &&  toplam <= 9
    print  "Girdiniz Karakter ve sayinin toplami: #{birinci_basamagi[toplam]}"
elsif toplam >= 10 && toplam <= 99
    onuncu_dizi = toplam / 10
    birinci_dizi = toplam % 10
    print "Girdiniz Karakter ve sayinin toplami: #{onuncu_basamagi[onuncu_dizi]} #{birinci_basamagi[birinci_dizi]}"
elsif toplam >= 100 && toplam <=999
    yuzuncu_dizi = toplam / 100
    onuncu_dizi = (toplam % 100) / 10
    birinci_dizi = (toplam % 100) % 10
    print "Girdiniz Karakter ve sayinin toplami:  #{yuzuncu_basamagi[yuzuncu_dizi]} #{onuncu_basamagi[onuncu_dizi]} #{birinci_basamagi[birinci_dizi]}"
elsif toplam >= 1000 && toplam <= 9999
   bininci_dizi = toplam / 1000
   yuzuncu_dizi = (toplam % 1000) / 100
   onuncu_dizi = (toplam % 100) / 10 
   birinci_dizi = toplam % 10
   print  "Girdiniz Karakter ve sayinin toplami: #{bininci_basamagi[bininci_dizi]}  #{yuzuncu_basamagi[yuzuncu_dizi]} #{onuncu_basamagi[onuncu_dizi]} #{birinci_basamagi[birinci_dizi]}"
elsif toplam > 10000 
    print "Sayilarin toplami 9999 dan buyuk olduğu için yazdiramiyoruz"
else 
    print "Yanliş bir girdi girdiniz"
end 



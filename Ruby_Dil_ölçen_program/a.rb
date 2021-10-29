#Kullanci Menusu
#Munude Kuullanicini hangi dilde kelime bilgi sevyesini ölçmek ister 
#kullanicinin terci ne göre program kelime  testi oluşmarmaktadir
#testler 4 sorudan ve 4 şiktan oluşmaktadir
#her soru 25 puan üzerinde değlendirme yapilcaktir ve testing sonucu testin sonunda kullaniciya sunulcaktir
#program kullanicinin hata yaptiği sorulari döğru cevabini yazacaktir
kelimeler = File.readlines("kelimeler.txt")
sozluk = {}
turkce_kelimeleri = []
inglizce_kelimeler = []
kelimeler.each do |line|
    dizi = line.split(" : ")
    sozluk[dizi[0]] = dizi[1].chomp
    inglizce_kelimeler << sozluk[dizi[0]]
    turkce_kelimeleri <<  dizi[1]
end 
sorular = []
cevaplar = []
i = 0
sozluk.each do  |soru,cevap|
     i += 1
     sorular << soru
     cevaplar <<  cevap
     break if i > 3
end 
birinci_soru = sorular[0]
birinci_sorunun_cevap = cevaplar[0]
ikinci_soru = sorular[1]
ikinci_sorunun_cevabi = sorular[1]
ucuncu_soru = sorular[2]
ucuncu_sorunun_cevabi = sorular[2]
dordun_soru = sorular[3]
dordun_sorunun_cevabi = sorular[3]
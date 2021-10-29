dizi = Array.new(128) {rand 999}
print "#{dizi}\n"
sayac = 0
en_cok = 0
l = []
for i in 0..(dizi.length)-1
    toplam = 0
    x = dizi[i]
    for j in 0..(dizi.length)-1 do
        if dizi[i] == dizi[j] 
            toplam += 1
        end   
    end
    if toplam > en_cok
        en_cok = toplam
        sayi = x
    end 
end
if toplam == 1
    print "Bütün sayilar hepsi birdafa geldiler"
else
   print "en cok gelen #{sayi} #{en_cok}defa geldi"
end 
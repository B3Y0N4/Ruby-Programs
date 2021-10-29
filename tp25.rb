print "Sayi Giriniz: "
sayi = gets.chomp
en_buyuk = 0
ikinci_en_buyuk = 0
dizi = []
for i in 0..(sayi.length-1) do
    dizi = dizi.push(sayi[i])
    if dizi[i].to_i >= en_buyuk
        en_buyuk = dizi[i].to_i
    end 
end
for j in 0..(sayi.length-1) do
    if dizi[j].to_i > ikinci_en_buyuk  &&  dizi[j].to_i < en_buyuk
        ikinci_en_buyuk = dizi[j].to_i
    end 
end


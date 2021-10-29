# Girilen sayilarin en buyuğu ve en kuçuğu yazdiran program 
print "N adet sayisi giriniz: "
adet  = gets.chomp.to_i
en_buyuk = 0
en_kucuk = 0
sayac = 0
while sayac < adet
    print "sayi gir: "
    sayi  = gets.chomp.to_i
    en_kucuk = sayi if sayac == 0
    if sayi > en_buyuk
        en_buyuk = sayi
    end 
    if sayi < en_kucuk
        en_kucuk = sayi
    end 
    sayac += 1
end 
puts "Girmiş olduğunuz sayilarin arasinda en buyuk sayi #{en_buyuk} sayisidir"
print "Girmiş olduğunuz sayilarin arasinda en kucuk sayi #{en_kucuk} sayisidir"
#Verilen adet sayisina göre girilen tek ve çift sayilarin toplami yazan program 
print "N adet sayisi giriniz: "
adet  = gets.chomp.to_i
sayac = 0
tek_sayilari = 0
çift_sayilari = 0
while sayac < adet
    print "sayi giriniz: "
    sayi  = gets.chomp.to_i
    if sayi.even?
        çift_sayilari += 1
    else 
        tek_sayilari += 1
    end 
    sayac +=1 
end 
puts "Toplam #{çift_sayilari} çift sayilari girdiniz"
puts "Toplam #{tek_sayilari} tek sayilari girdiniz"
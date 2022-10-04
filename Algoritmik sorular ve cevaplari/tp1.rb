#Girilen adet sayisina göre sayilarin toplamini yazan program
print "N adet sayisi giriniz: "
adet  = gets.chomp.to_i
sayac = 0
sayilarim_toplami = 0
while sayac < adet 
    print "Girmiş olduğnuz adet sayisi kadar sayilari tekgiriniz: "
    sayi  = gets.chomp.to_i
    sayilarim_toplami += sayi
    sayac += 1
end
print sayilarim_toplami
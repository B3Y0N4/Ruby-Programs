# A ve B sayisinin kaç defa yan yana geldini hesaplayan program
print "Girmek istediniz karater kadar sayi giriniz: "
sayi = gets.chomp.to_i
sayac = 0
x = ""
ab_sayisi = 0
while sayac < sayi
    print "Karaterler Giriniz: "
    karakter = gets.chomp.to_s
    x = x + karakter
 sayac += 1
end

for i in 0..(x.length - 1) do
    if x[i].ord == 65 && x[i+1].ord == 66 
        ab_sayisi += 1
    end
end
puts ab_sayisi

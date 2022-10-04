#Girilen sayilarin karelerinden kuçuk onlan sayilari yazan program 
print "Sayi giriniz: "
sayi = gets.chomp.to_i
x = 0
sayac = 0
i = 1
while sayi <= 0
    puts "pozitif bir sayi giriniz"
    print "sayi giriniz: s"
    sayi = gets.chomp.to_i 
end
    
for i in 1..sayi
    if i**2 < sayi
        x_sayisi = i
        puts x_sayisi
    end 
end
    


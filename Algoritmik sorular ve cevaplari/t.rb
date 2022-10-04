asalSayaci = 0
dizi = Array.new
j = 0
k = 0
for i in  100..1000 do
    sayac = 0
    for j in 2..i-1 do
        if i % j == 0
            sayac = sayac + 1
        end
    end
    if sayac == 0  
        dizi[k] = i
        k = k + 1
    end 
end

print "\n"
print "asal sayilar:\n"
for i in 0..dizi.length-1 do
    print "#{dizi[i]}, "

end


print "\n\n"

print "ilginc asal sayilar:\n"


for i in 0..dizi.length-1 do
    sayi = dizi[i].to_s

    for j in 0..dizi.length-1 do
        if i != j
            sayi1 = dizi[j].to_s


            toplam = 0
            for k in 0..2 do
                for z in 0..2 do
                    if sayi[k] == sayi1[z]
                            if sayi[k] == sayi[k-1] || sayi[k] == sayi[k-2]
                                break
                            else 
                                toplam = toplam + 1
                                break
                            end    
                    end
                        
                end
            end
        end


        if toplam == 3
                dizi[i].to_i
                dizi[j].to_i
                print "#{dizi[i]}, "
                break

        end
    end
end






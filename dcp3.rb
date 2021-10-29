print "Dizide kaç tane sayi olmasini istersiniz: "
dizi_sayisi = gets.chomp.to_i  
dizi = []
sayac = 0
while sayac < dizi_sayisi
print "sayi giriniz: "
sayi = gets.chomp.to_i
dizi = dizi.push(sayi)
sayac = sayac + 1
end
sum = 1 
   dizi.each do |x|
    sum = sum * x
   end 
   dizi2 = []
    for j in 0..(dizi.size-1)
        if sum.even?
            l = sum / dizi[j]
            dizi2 = dizi2.push(l)
        end 
    end
    if !(sum % 2 == 0) 
    for z in (dizi.size)..0
        l = sum / dizi[z]
        dizi2 = dizi2.push(l)
    end 
  end 
 print "#{dizi}\n"
 print dizi2


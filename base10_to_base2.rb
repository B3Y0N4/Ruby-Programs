print "Sayi giriniz: "
sayi = gets.chomp.to_i
dizi = []
sum = ""
while sayi >= 1
    dizi = dizi.push(sayi)
    sayi = sayi / 2 
end
dizi = dizi.reverse
for i in 0..(dizi.length-1) do
    if dizi[i].even?
        sum += 0.to_s
    else
        sum += 1.to_s
    end 
end
print sum
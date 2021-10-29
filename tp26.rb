print "Sayi Giriniz: "
sayi = gets.chomp
sum = 0
for i in 0..(sayi.length-1) do
    for j in 0..(sayi.length-1)  do
        for k in 0..(sayi.length-1) do
            if i != j &&  i !=k && j !=k
                if sayi[i].to_i * sayi[j].to_i > sum 
                    sum = sayi[i].to_i * sayi[j].to_i * sayi[k].to_i
                end 
            end
        end
        
    end
end
print sum
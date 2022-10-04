print "Sayi Giriniz: "
sayi =  gets.chomp
bir = 0
iki = 0
j = 0
for i in 0..(sayi.length-1) do
    if sayi[i].to_i > bir
        j = i
        bir = sayi[i].to_i
    end
end

for i in 0..(sayi.length-1) do
    if i == j
        next
    end
    if sayi[i].to_i > iki
        iki = sayi[i].to_i
    end
end

print"#{bir}, "
print"#{iki}"
   




print"dizi boyutunu gir: "
boyut = gets.chomp.to_i
dizi = []
dizi1 = []
puts "dizinin elemanlarını gir:"
for i in 0..(boyut - 1) do
    eleman = gets.chomp.to_i
    dizi = dizi.push(eleman)
end

for i in 0..(boyut - 1) do
    product = 1
    for j in 0..(dizi.length - 1) do
        if i != j
            product = product * dizi[j]
        end
    end
    dizi1[i] = product
end
print "#{dizi}\n"
print dizi1

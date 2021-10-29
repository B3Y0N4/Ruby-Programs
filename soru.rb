a=[8, 5, 9, 6, 3]
b=[2, 1, 4, 7, 0]
print " bir secenek sec: "
secenek = gets.chomp.to_i
if secenek == 0
    puts "programi sonlandirdiniz"
elsif secenek == 1    
    c=a + b
    puts "c elemanlari: #{c}"
elsif secenek == 2
    d = [a.max, b.max]
    puts "d elemanlari #{d}"
elsif secenek == 3 
     c = (a + b).shuffle.push 55
     ortanca_eleman = c[(c.size / 2).to_i]
     puts "c elemanlari: #{c}"
     puts "ortanca eleman #{ortanca_eleman}"
elsif secenek == 4
    d=[a.max, b.max].unshift 100,200,300
    puts "d elemanlari: #{d}"
else 
    puts "1 ile 4 yazmalisiniz"
end


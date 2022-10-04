=begin
print "Sayi giriniz: "
sayi = gets.chomp.to_i
j = 1
test = false 
while !test
    test = true

    for i in 1..sayi do
      if j % i != 0
        test = false
      end
    end

    if test
        break
    end
    j = j + 1
end
print"#{j}"
=end 
print "Sayi giriniz: "
sayi = gets.chomp.to_i
j = 1
sayac = 0
while sayac != sayi
     sayac = 0
    for i in 1..sayi do
      if j % i == 0
        sayac += 1
      end
    end
    if sayac == sayi
        break
    end
    
    j = j + 1
end
print"#{j}"






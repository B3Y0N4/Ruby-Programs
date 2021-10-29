print("bir sayi gir: ")
sayi = gets.chomp.to_i
print "#{sayi},"
while sayi > 1
    if sayi.even?
        sayi = sayi / 2
        1print " #{sayi},"
    else
        sayi =  (3 * sayi ) +1
         print " #{sayi},"
    end 
end 

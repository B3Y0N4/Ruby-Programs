print "1 ile 50 arasinda bir sayi giriniz: "
sayi = gets.chomp.to_i
sayac = 0
loop do
    sayac += 1 
    for i in 1..sayi
        if sayac % i == 0
        else 
            break
        end 
    end 
        if i == sayi && sayac % i == 0
           break 
        end  
end
print sayac
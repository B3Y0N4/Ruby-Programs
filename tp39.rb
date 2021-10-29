print "sayi giriniz: "
sayi = gets.chomp.to_i
i = 1
x = 11
test = true
baslama_dizisi =  [12,123,1234,12345,123456,1234567,12345678,123456789]
while i <= sayi
    print "#{i}," if  i % 10 == i
    if  !(i % 10 == i)
        for j in 0..(baslama_dizisi.length)-1 do
             i = baslama_dizisi[j]
             print "#{i},"
             while !(i % 10 == 9)
                 i += x
                 if sayi >= i
                    print "#{i},"
                 else
                    test = false
                    break
                 end
             end
             if !test
                 break
             end
             if i % 10 == 9
                x = (x.to_s + 1.to_s).to_i
             end 
        end
    end 
    if !test
        break
    end
    i += 1
end


#girilen tum buyuk karakterlerin ve kuçuk karakterlerin sayisini yazan program
buyuk_harf = 0
kucuk_harf = 0
loop do
    print "karakter giriniz: "
    karakter = gets.chomp


    while !(karakter.length == 1)
        puts "lutfen tek karakter yaziniz"
        print ""
        karakter = gets.chomp
    end
        if karakter.ord >= 65 && karakter.ord <= 90
         buyuk_harf +=1
        elsif karakter.ord >= 97 && karakter.ord <= 122
            kucuk_harf += 1
        else
            print "Lutfen Doğru Karakter giriniz"
        end 
        if karakter.ord == 46
            break
        end
end
puts "Girmiş olduğnuz karakterlerin buyuk harf  #{buyuk_harf} sayisidir"
print "Girmiş olduğnuz karakterlerin kucuk harf  #{kucuk_harf} sayisidir"




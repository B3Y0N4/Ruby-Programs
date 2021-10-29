print "Sayi Giriniz: "
sayi = gets.chomp
en_buyuk = 0
sayi.each_char do |x|
    if x.to_i > en_buyuk 
        en_buyuk = sayi
    end
end
print en_buyuk

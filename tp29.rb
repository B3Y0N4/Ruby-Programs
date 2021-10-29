print "Bir Sayi Giriniz: "
sayi = gets.chomp.to_i
en_uzun = 0
for i in 1..sayi do
    ilk_terim = i
    sayac = 1
    while i != 1
        if i.even?
            i = i / 2
            sayac += 1
        else 
            i =  (i * 3 ) + 1
            sayac += 1
        end 
    end
    if sayac > en_uzun
        ilk = ilk_terim
        en_uzun = sayac 
    end 
end

print"#{ilk}, "
while ilk != 1
    if ilk.even?
        ilk = ilk / 2
        print"#{ilk}, " 
    else 
        ilk =  (ilk * 3 ) + 1
        print"#{ilk}, "
    end 
end


=begin
test = true
while x > 1
     print x if test
     test = false
    if x.even?
        x = x / 2
       print "  #{x}"
    else 
        x =  (x * 3 ) + 1
      print "  #{x}"
    end 
end
=end

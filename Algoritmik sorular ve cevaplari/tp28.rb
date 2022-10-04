print "Bir Sayi Giriniz: "
sayi = gets.chomp.to_i
sayac = 0
ilk_terim = sayi
test = true
while ilk_terim > 1
     print sayi if test
     test = false
    if ilk_terim.even?
       ilk_terim = ilk_terim / 2
       print "  #{ilk_terim}"
    else 
      ilk_terim =  (ilk_terim * 3 ) + 1
      print "  #{ilk_terim}"
    end 
end
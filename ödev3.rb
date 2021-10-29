print "Yaşinizi Giriniz: "
yas = gets.chomp.to_i
print "Kilonuzu giriniz: "
kilo = gets.chomp.to_i
print "Boyunuzu giriniz: "
boy = gets.chomp.to_f
vki = (kilo / (boy**2)).to_f
if  yas >= 13 && yas <= 17 && vki >=18.50 && vki <= 24.99
    print "Vucut kitle indeksiniz #{vki} ve askeri lise için uygunsunuz"
elsif yas < 13 || yas > 17
      print "Yaşiniz uygun değil lütfen 13 ile 17 arasi sayi giriniz"
else 
    print "Vucut kitle indeksiniz #{vki} ve askeri lise için uygun değilsiniz"
end   
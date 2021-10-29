print "Arasinav notunuzu giriniz: "
ara_sinav = gets.chomp.to_i
print "Final notunuzu giriniz: "
final_notu = gets.chomp.to_i
print "Quiz notunuzu giriniz: "
quiz_notu = gets.chomp.to_i
print "Devamlilik notu giriniz: "
devamlilik_notu = gets.chomp.to_i
ortalama = (ara_sinav*0.3) + (quiz_notu*0.1) + (devamlilik_notu* 0.1) + (final_notu*0.5)
if ortalama >= 90 && ortalama <=100
     print "Ortalamaniz #{ortalama} ve harf notunuz A'dir"
elsif ortalama >= 80 && ortalama <=89
    print "Ortalamaniz #{ortalama} ve harf notunuz B'dir"
elsif ortalama >= 70 && ortalama <=79
    print "Ortalamaniz #{ortalama} ve harf notunuz C'dir"
elsif ortalama >= 60 && ortalama <=69
    print "Ortalamaniz #{ortalama} ve harf notunuz C'dir"
elsif ortalama >= 50 && ortalama <=1
    print "Ortalamaniz #{ortalama} ve harf notunuz F'dir"
else 
    print "Yanliş puana girdiniz lutfen puanlarinizi kontrol edip tekrar giriniz"
end

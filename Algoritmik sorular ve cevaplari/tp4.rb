#-1 girilene kadar girilen çift ve tek sayilarin toplamini hesaplayan program 
tek_sayilari = 0
çift_sayilari = 0
loop do
    print "Sayi giriniz: "
    sayi = gets.chomp.to_i
   if sayi.even? && sayi > 0
     çift_sayilari += 1
   elsif sayi.odd? && sayi > 0
    tek_sayilari += 1
   end

   if sayi == -1 
    break
   elsif sayi < 0
        puts "Sayilar pozitive tam sayi olmasi gerekmektedir"
   end 
end 
puts "Toplam #{çift_sayilari} çift sayilari girdiniz"
puts "Toplam #{tek_sayilari} tek sayilari girdiniz"




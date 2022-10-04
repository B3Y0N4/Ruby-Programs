print "Birinci tarihin günü giriniz: "
    birinci_tarih_gun = gets.chomp.to_i
    while birinci_tarih_gun > 31
        puts "Birinci tarihin günü 1 ile 31 arasinda olmalidir"
        print "Birinci tarihin günü giriniz: "
         birinci_tarih_gun = gets.chomp.to_i
    end
        print "Birinci tarihin ayi giriniz: "
        birinci_tarih_ayi = gets.chomp.to_i
    while birinci_tarih_ayi > 12
         puts "Birinci tarihin ayi 1 ile 12 arasinda olmalidir"
         print "Birinci tarihin ayi giriniz: "
            birinci_tarih_ayi = gets.chomp.to_i
    end
        print "Birinci tarihin yili giriniz: "
         birinci_tarih_yili = gets.chomp.to_i
    while birinci_tarih_yili < 0 
         print "Birinci tarihin yili pozitive tam sayi olmali"
         print "Birinci tarihin yili giriniz: "
            birinci_tarih_yili = gets.chomp.to_i
    end
    puts "#{birinci_tarih_gun}.#{birinci_tarih_ayi}.#{birinci_tarih_yili}"

    print "İkinci tarihin günü giriniz: "
    ikinci_tarih_gun = gets.chomp.to_i
    while ikinci_tarih_gun > 31
        puts "İkinci tarihin günü 1 ile 31 arasinda olmalidir"
        print "İkincii tarihin günü giriniz: "
        ikinci_tarih_gun = gets.chomp.to_i
    end
        print "İkinci tarihin ayi giriniz: "
        ikinci_tarih_ayi = gets.chomp.to_i
    while ikinci_tarih_ayi > 12
         puts "İkinci tarihin ayi 1 ile 12 arasinda olmalidir"
         print "İkinci tarihin ayi giriniz: "
         ikinci_tarih_ayi = gets.chomp.to_i
    end
        print "İkinci tarihin yili giriniz: "
        ikinci_tarih_yili = gets.chomp.to_i
    while ikinci_tarih_yili < 0 
         print "İkinci tarihin yili pozitive tam sayi olmali"
         print "İkinci tarihin yili giriniz: "
         ikinci_tarih_yili = gets.chomp.to_i
    end
    puts "#{ikinci_tarih_gun}.#{ikinci_tarih_ayi}.#{ikinci_tarih_yili}"

 
 if birinci_tarih_ayi >= 1 && birinci_tarih_ayi <=7
    if birinci_tarih_ayi.even?
        if birinci_tarih_ayi == 2 
          if   birinci_tarih_yili % 4 == 0
            toplam_gun = 29 - birinci_tarih_gun
          else
            toplam_gun = 28 - birinci_tarih_gun
          end 
        else 
            toplam_gun = 30 - birinci_tarih_gun
        end
    else
        toplam_gun = 31 - birinci_tarih_gun    
    end     
elsif birinci_tarih_ayi >=8 && birinci_tarih_ayi <=12
    if birinci_tarih_ayi.even?
       toplam_gun = 31 - birinci_tarih_gun
    else
       toplam_gun = 30 - birinci_tarih_gun
    end 
end
  
    ay = birinci_tarih_ayi + 1
    
for yil in birinci_tarih_yili..ikinci_tarih_yili do
    loop do
        if ay == 13 
            ay = 1
        end 
        if ay >= 1 && ay <=7
            if ay.even? 
                if ay == 2 
                    if  yil % 4 == 0
                        toplam_gun = toplam_gun + 29
                    else
                      toplam_gun = toplam_gun + 28
                    end 
                else 
                    toplam_gun = toplam_gun + 30
                end
            else
                toplam_gun = toplam_gun + 31
            end
        elsif ay >= 8 && ay <=12
            if ay.even?
                toplam_gun = toplam_gun + 31
            else
                toplam_gun = toplam_gun + 30
            end 
        end
        ay += 1
            if (yil == ikinci_tarih_yili && ay == ikinci_tarih_ayi ) || ay == 13
                break
            end
    end 
end 



case ikinci_tarih_ayi
when 1
    toplam_gun = toplam_gun + ikinci_tarih_gun
when 2
    toplam_gun = toplam_gun + ikinci_tarih_gun
when 3
    toplam_gun = toplam_gun + ikinci_tarih_gun
when 4
    toplam_gun = toplam_gun + ikinci_tarih_gun
when 5
    toplam_gun = toplam_gun + ikinci_tarih_gun
when 6
    toplam_gun = toplam_gun + ikinci_tarih_gun
when 7
    toplam_gun = toplam_gun + ikinci_tarih_gun
when 8
    toplam_gun = toplam_gun + ikinci_tarih_gun
when 9
    toplam_gun = toplam_gun + ikinci_tarih_gun
when 10
    toplam_gun = toplam_gun + ikinci_tarih_gun
when 11
    toplam_gun = toplam_gun + ikinci_tarih_gun
else 12
    toplam_gun = toplam_gun + ikinci_tarih_gun
end
puts "Toplam Gün Sayisi = #{toplam_gun}" 



    




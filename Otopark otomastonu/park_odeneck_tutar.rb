puts "Arabanin Tipini Giriniz"
print "Taksi için 1,Minibüs için 2,Ticari Araci için 3 Tiklayiniz: "
arabanin_tipi = gets.chomp.to_i
print "Aracin Kaç saat park ettiğni giriniz: "
saat_bilgisi = gets.chomp.to_i
if arabanin_tipi == 1
    if saat_bilgisi  == 1 
        print "Taksi Ödenecek Tutar 5Tl dir"
    else
        birsaat_sonrasi = 0.2 * saat_bilgisi
        odenecek_tutar = (5 * saat_bilgisi) + birsaat_sonrasi
        print "Taksi için Ödenecek Tutar #{odenecek_tutar}Tl dir"
    end 
elsif arabanin_tipi == 2
    if saat_bilgisi  == 1 
        print "Minibüs Ödenecek Tutar 6Tl dir"
    else
        birsaat_sonrasi = 0.215 * saat_bilgisi
        odenecek_tutar = (6 * saat_bilgisi) + birsaat_sonrasi
        print "Minibüs için Ödenecek Tutar #{odenecek_tutar}Tl dir"
    end 
elsif arabanin_tipi == 3
    if saat_bilgisi  == 1 
        print "Ticari Aracç Ödenecek Tutar 6.5Tl dir"
    else
        birsaat_sonrasi = 0.25 * saat_bilgisi
        odenecek_tutar = (6.5 * saat_bilgisi) + birsaat_sonrasi
        print "Ticari arac için Ödenecek Tutar #{odenecek_tutar}Tl dir"
    end 
else  
    print "Burada Böyle bir arac park edilmemiş!"
end 
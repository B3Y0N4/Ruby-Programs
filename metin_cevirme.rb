def metin_cevirme(dosya,ilerleme_sayisi)
    metin =  File.readlines(dosya)
    metin.each do |satir|
    i = 0
        satir.each_char do  |harf|
            if harf.ord <= 90 &&  harf.ord >= 65 || harf.ord <= 122 &&  harf.ord >= 97
                if harf.ord <= 90 &&  harf.ord >= 65
                    position = ilerleme_sayisi + harf.ord 
                    if position > 90
                        until position <= 90
                            position = (position - 91 ) + 65
                        end
                        satir[i] = position.chr
                    else 
                        satir[i] = position.chr     
                    end 
                elsif    
                      position = ilerleme_sayisi + harf.ord 
                if position > 122
                    until position <= 122 
                        position = (position - 123 ) + 97
                    end
                    satir[i] = position.chr
                elsif
                    satir[i] = position.chr
                end 
            end 
        end 
        i = i + 1 
    end 
end
File.open(dosya,"w") do |file|
    metin.each do |satir|
        file << satir
    end
  end 
end  
 
def eski_hali_hale_donuşturme(dosya,ilerleme_sayisi)
    metin =  File.readlines(dosya)
    metin.each do |satir|
    i = 0
        satir.each_char do  |harf|
            if (harf.ord <= 90 &&  harf.ord >= 65) || (harf.ord <= 122 &&  harf.ord >= 97)
                if harf.ord <= 90 &&  harf.ord >= 65
                    position = harf.ord - ilerleme_sayisi
                    if position < 65
                        until position >=  65
                            position = (position + 91 ) - 65
                        end
                        satir[i] = position.chr
                    else 
                        satir[i] = position.chr     
                    end 
                elsif  
                      position = harf.ord - ilerleme_sayisi
                if position < 97
                    until position >= 97
                        position = (position + 123 ) - 97
                    end
                    satir[i] = position.chr
                elsif
                    satir[i] = position.chr
                end 
            end 
        end 
        i = i + 1 
    end 
end
File.open(dosya,"w") do |file|
    metin.each do |satir|
        file << satir
    end
  end 
end



print "İlerleme sayisini giriniz: "
ilerleme_sayisi = gets.chomp.to_i
if ilerleme_sayisi >= 0
    metin_cevirme("metin.txt" , ilerleme_sayisi)
    puts "Dosyaniz başarli bir şekilde şifrelendiniz"
    print "Dosyayi eski haline donuşturmrk için lutfen 1 giriniz:"
    eski_hali = gets.chomp.to_i
    if eski_hali == 1
        eski_hali_hale_donuşturme("metin.txt", ilerleme_sayisi)
        print "Dosyaniz Bşarli bir şekilde eski hale donuşturuldu"
    end 
else
    print "Lutfen positive sayi giriniz"
end 
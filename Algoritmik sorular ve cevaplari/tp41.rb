=begin
def foo dizi1,dizi2 = [5]
    dizi1.each do |e|
        if (e + 1) % 2 == 1
            dizi2 << e
        end 
    end
            dizi2.each do |e|
                if( e * 3) % 6 == 0
                    print e
                end 
            end 
    end 
    dizi1 = [3,4,9,12]
    foo dizi1
    # 4 12

    print "Adin ne?:"
    isim = gets.chomp
    isim_isim = isim.capitalize.downcase
    print "soyadin ne?:"
    soyad = gets.chomp
    soyad_soyad = soyad.reverse.upcase
    puts "Adim #{isim_isim} ve soyadim #{soyad_soyad}"
    #Adim ahmet ve soyadim temhem} 
=end
dizi = [0,1,2,3,4,5]
i = 0
while i < dizi.size - 2
    dizi[i + 2] = dizi[i] + dizi[i + 1] 
    i += 1
end 
p dizi
# 2 = 1,3 = 3, 

$dizi = []
def diziyi_doldurmak
    sayac = 0
    while sayac < 16
        print "Diziyi doldurmak için 16 tane sayi giriniz:"
        sayi = gets.chomp.to_i
        if sayi.integer?
           $dizi = $dizi.push(sayi)
          sayac +=1 
        else 
            until sayi.integer?
                print "Lütfen sayi giriniz" 
                sayi = gets.chomp.to_i 
            end
        end 
    end
end
def dizi_sirali_mi
    if $dizi.sort
        print "dizi sirali "
    else 
         print "dizi sirali değil"
    end 
end
dizi_sirali_mi
diziyi_doldurmak

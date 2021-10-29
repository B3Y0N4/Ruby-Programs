print "Arabanin Marka kodunu giriniz: "
marka = gets.chomp.to_i
renault_benzin_tutari = 0
mazda_benzin_tutari = 0
honda_benzin_tutari = 0
ford_benzin_tutari = 0
benzin_tutari = 0

while marka != 111 
    while (marka < 1 || marka > 4) && marka != 111
        puts "lutfen 1 ile 4 arasinda bir sayi giriniz"
        print "Arabanin Marka kodunu giriniz: "
        marka = gets.chomp.to_i
    end
        if marka == 1
            print "Renault Benzin tutari giriniz: "
                benzin_tutari == gets.chomp.to_i
                renault_benzin_tutari = renault_benzin_tutari + benzin_tutari
        elsif marka == 2
            print "Mazda Benzin tutari giriniz: "
                benzin_tutari == gets.chomp.to_i
                mazda_benzin_tutari = mazda_benzin_tutari + benzin_tutari
        elsif marka == 3
            print "Honda Benzin tutari giriniz: "
                 benzin_tutari == gets.chomp.to_i
                 honda_benzin_tutari = honda_benzin_tutari + benzin_tutari
        elsif marka == 4
            print "Ford Benzin tutari giriniz: "
                  benzin_tutari == gets.chomp.to_i
                  ford_benzin_tutari = ford_benzin_tutari + benzin_tutari
        end
        print "Arabanin Marka kodunu giriniz: "
        marka = gets.chomp.to_i
    
end

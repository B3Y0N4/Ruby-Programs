def dizide_sayiyi_bulmak(arr, num)
    test = false
    arr.each.with_index do |x,i| 
        if x == num
            print "#{num} dizide bulumaktadir ve #{i}. pozisiyonunda"
            test = true
            break
        end 
    end 
    print "#{num} dizide bulunmamaktadir" if !test
end 

dizi = Array.new(128) {rand 999}
print "#{dizi}\n"

print "\nSayi giriniz: "
sayi = gets.chomp.to_i

dizide_sayiyi_bulmak dizi, sayi


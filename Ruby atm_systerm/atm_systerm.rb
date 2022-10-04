print "Kart numaranizi giriniz: "
kart_numarasi = gets.chomp
while kart_numarasi.length != 16
    puts "Yanliş kart numarasi girdiniz"
    print "Kart numaraniz 16 hane şeklinde giriniz:"
    kart_numarasi = gets.chomp
end
print "Kart Şifrenizi giriniz: "
kart_sifresi = gets.chomp.to_i
sifre = kart_numarasi.to_i % 10000
sayac = 1
test = false
while kart_sifresi != sifre 
    if sayac == 3
        puts "3 defa'dan fazla denediniz için kartiniz bloke edilmiştir"
        test = true
        break
    end 
    print "Yanliş şifre girdiniz lütfen doğru şifre giriniz: "
    kart_sifresi = gets.chomp.to_i
    sayac += 1
end
if !test
    bakiye = 3000
    islem_ucreti = 0   
    fis = ["|  Kart Numarasi : xxxx xxxx xxxx #{sifre}               |"]
    loop do
        puts "Bankamiz her işlem başinda 1tldir "
        puts "Bakiye sorgulamak için 1 "
        puts "Para Yatirmak için 2 "
        puts "para çekmek için 3 "
        islem = gets.chomp.to_i
        while islem < 1 || islem > 3
            puts "Lutfen 1 ile 3 arasinda yapmak istediniz işlemi giriniz"
            puts "Bakiye sorgulamak için 1 "
            puts "Para Yatirmak için 2 "
            puts "para çekmek için 3 "
            islem = gets.chomp.to_i
        end 
        case islem
        when 1
            puts "Aktif Bakiyeniz : #{bakiye}TL dir"
            fis = fis.push("|  Bakiye Kontrolu,Aktif Bakiyeniz : #{bakiye}TL dir      |")
            islem_ucreti += 1.0 
        when 2
            print "Yatirmak istediniz miktari giriniz: "
            miktar = gets.chomp.to_i
            while miktar > 10000
                puts "Onbin üzerinde para yatiramiyorsunuz"
                puts "Onbin altinda yatirmak istediniz yeni miktar giriniz"
                miktar = gets.chomp.to_i
            end
            bakiye += miktar 
            puts "Hesabinza #{miktar}TL Yatirildi "
            fis = fis.push("|  Yatirilan Tutar : #{miktar}TL                          |")
            fis = fis.push("|  Aktif Bakiyeniz : #{bakiye}TL                          |")
            islem_ucreti += 1.0 
        else
           puts "Aktive Bakyeniz #{bakiye}TL dir" 
           print "Çekmek istediginiz miktari giriniz: "
           miktar = gets.chomp.to_i
           if miktar > bakiye
             while miktar > bakiye
                puts "Hesabiniz'da girdiniz miktarda para bulunmamatadir"
                puts "Çekmek istediniz yeni miktar giriniz"
                miktar = gets.chomp.to_i
             end
             bakiye -= miktar 
             puts "Hesabiniz'dan #{miktar} çektiniz"
           else 
             bakiye -= miktar
             puts "Aktive bakiyenizden #{miktar}TL çektiniz"
             fis = fis.push("|  Çekilen Tutar : #{miktar}TL                                  |")
             fis = fis.push("|  Aktif Bakiyeniz : #{bakiye}TL                                |") 
             islem_ucreti += 1.0 
           end 
        end
        print "İşlemi sonlandirmak için 111 tiklayiniz, Devam etmek için Enter'e tiklayiniz: "
        islem = gets.chomp.to_i
         if islem == 111
            fis = fis.push("|  İşlem ucreti : #{islem_ucreti}TL'dir                          |")
            puts "-" * 50
            puts fis.flatten
            puts "-" * 50
            break
         end 
    end
end

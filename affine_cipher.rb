#Encryptment ✓
#Decryppment ✓
#Funtionlize and make a menu
#Read Mesagge from file and funtionlize and make manu

  
def mesaj_sifrelemek(mesaj,a,b)
    y = 0
  $sifrelenmis_mesaj = ""
      mesaj.each_char do |karakter|
        if karakter.ord == 32
          $sifrelenmis_mesaj << 32.chr
        end 
        if karakter.ord >= 97 && karakter.ord <= 122
                  alfabe_pozisyon =  karakter.ord - 97
                  y = (a*alfabe_pozisyon + b ) % 26
                  z = (y + 97).chr
                  $sifrelenmis_mesaj << z 
        elsif karakter.ord >= 65 && karakter.ord <= 90
                    alfabe_pozisyon =  karakter.ord - 65
                    y = (a*alfabe_pozisyon + b ) % 26
                    z = (y + 65).chr
                    $sifrelenmis_mesaj << z 
          elsif karakter.ord == 32
                   $sifrelenmis_mesaj << ""      
        end 
      end 
      puts   $sifrelenmis_mesaj
      puts "Şifreyi çözmek için 1"
      print "Programdan çikmak için 2 giriniz:"
      islem = gets.chomp.to_i
       if islem == 1
          sifre_cozmek($sifrelenmis_mesaj,a,b)
       elsif islem == 2
          print "Programi sonlandirdiniz"
       end 
end 
 
def sifre_cozmek(sifrelenmis_mesaj,a,b)
  cozulmus_mesaj = ""
  sayac = 0
  sifrelenmis_mesaj.each_char do |karakter| 
          if karakter.ord == 32
            cozulmus_mesaj << 32.chr
          end 
          if karakter.ord >= 97 && karakter.ord <= 122
              alfabe_pozisyon =  karakter.ord - 97
                for i in 1..27 do
                  if ((a % 26) * (i % 26)) % 26 == 1
                       y = (i*( alfabe_pozisyon - b)) % 26
                        break 
                    end 
                end
                z = (y + 97).chr
               cozulmus_mesaj << z
          elsif karakter.ord >= 65 && karakter.ord <= 90
                alfabe_pozisyon =  karakter.ord - 65
                for i in 1..27 do
                  if ((a % 26) * (i % 26)) % 26 == 1
                        y = (i*( alfabe_pozisyon - b) ) % 26
                      break 
                  end 
                end
                z = (y + 65).chr
               cozulmus_mesaj << z
          elsif karakter.ord == 32
                sifrelenmis_mesaj << "" 
          end 
  end
  print  cozulmus_mesaj
end 
puts "Mesaj şifrelemek için 1:"
print "Şifrelenmiş mesaji çözmek için 2: "
islem = gets.chomp.to_i
while islem != Integer.superclass && islem < 0 && islem > 1
     print "Yapmak istediniz işlem 1 yada 0 olmalidir: "
     islem = gets.chomp.to_i
end

if islem == 1
          print "Doğrusal Şifreleme ile şifrelemk istediniz mesaji Giriniz: "
          mesaj = gets.chomp
          sayac = 0
          while !(sayac == mesaj.length)
            sayac = 0
            for i in 0..mesaj.length - 1 do
              if ((mesaj[i].ord >= 97 and mesaj[i].ord <= 122) or (mesaj[i].ord >= 65 and mesaj[i].ord <= 90) or (mesaj[i].ord == 44) or (mesaj[i].ord == 46))
                sayac += 1
              else
                puts "Mesajinizda sadece harf, nokta ya da virgul olamsi gerekir"
                break
              end
            end
            if !(sayac == mesaj.length)
              print "Doğrusal Şifreleme ile şifrelemk istediniz mesaji Giriniz: "
              mesaj = gets.chomp 
            end
          end
          

          while mesaj.empty? 
                puts "BOŞ BİR MESAJ GİRDİNİZ!!" 
                puts "Doğrusal Şifreleme ile Şifrelemk istediniz Mesaji Tekrar Giriniz: "
                mesaj = gets.chomp
          end
          print "Şifrelemek istediniz Mesajin Birinici Anahtarini Giriniz: "
          a = gets.chomp.to_i
          while !(a == Integer.superclass)  && a == 0 || a < 0
              puts "Birirnic anahtariniz sifir veya sifirdan küçük olamaz ve sayi olmasi gerek"
              puts "Şifrelemek istediniz Mesajin Birinici Anahtarini  Tekrar Giriniz: "
              a = gets.chomp.to_i
          end 
          print "Şifrelemek istediniz Mesajin İkinci Anahtarini Giriniz: "
          b = gets.chomp.to_i
          while !(b == Integer.superclass)  && b == 0 || b < 0
              puts "Birirnic anahtariniz sifir veya sifirdan küçük olamaz ve sayi olmasi gerek"
              puts "Şifrelemek istediniz Mesajin İkinci Anahtarini Giriniz: "
              b = gets.chomp.to_i
          end 
          mesaj_sifrelemek(mesaj,a,b)
elsif islem == 2
              print "Doğrusal Şifreleme ile Çözmek istediniz mesaji Giriniz: "
              sifrelenmis_mesaj = gets.chomp
              while sifrelenmis_mesaj == " "
                  puts "BOŞ BİR MESAJ GİRDİNİZ!!" 
                  puts "Doğrusal Şifreleme ile Şifrelemk istediniz Mesaji Tekrar Giriniz: "
                  sifrelenmis_mesaj = gets.chomp
            end
            print "Çözmek İstediniz Mesajin Birinici Anahtarini Giriniz: "
            a = gets.chomp.to_i
            while !(a == Integer.superclass)  && a == 0 || a < 0
              puts "Birirnic anahtariniz sifir vaya sifirdan  küçük olamaz ve sayi olmasi gerek"
              puts "Şifrelemek istediniz Mesajin Birinici Anahtarini  Tekrar Giriniz: "
              a = gets.chomp.to_i
           end 
            print "Çözmek İstediniz Mesajin İkinci Anahtarini Giriniz: "
            b = gets.chomp.to_i
            while !(b == Integer.superclass)  && b == 0 || b < 0
              puts "Birirnic anahtariniz sifir vaya sifirdan küçük olamaz ve sayi olmasi gerek"
              puts "Şifrelemek istediniz Mesajin İkinci Anahtarini Giriniz: "
              b = gets.chomp.to_i
          end 
        sifre_cozmek(sifrelenmis_mesaj,a,b)
  else
    puts "1 ve 2 arasinda bir işlem şeçmelisiniz" 
end 





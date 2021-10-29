print  "Yapmak istediniz İşlemin sayisini giriniz: "
menu = gets.chomp.to_i
i = [1,3,5,7,9,]
j = [2,4,6,8,10,]
k = [12,34,56,78,910]
 x= i + j + k 
siralama = x.sort.reverse
a = [1,3,5,7,9]
b = [2,4,6,8,10]
if menu >= 0 && menu <= 5
   if menu == 0
            print "programi sonlandirdiniz"
   elsif menu == 1
            c = a + b 
            print c
   elsif menu == 2
             d = [a.max, b.max]
             print d
   elsif menu == 3
            c = (a + b).shuffle.push 55
            ortanca_eleman = c[(c.size / 2).to_i]
            puts "c elemanlari: #{c}"
            puts "ortanca eleman #{ortanca_eleman}"
   elsif menu == 4
            d=[a.max, b.max].unshift 100,200,300
            puts "d elemanlari: #{d}"
   elsif menu == 5
      print siralama
   else 
            puts "1 ile 5 yazmalisiniz"
   end 
elsif menu == " "
   print "Lutfen sayi giriniz"
else
   print "1 ile 4 sayi araliği giriniz "
end


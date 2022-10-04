#fibonacci seris
a = 0
b = 1
print "Sayi Giriniz: "
sayi = gets.chomp.to_i
for i in 1..sayi do
   puts a
   sonuc = a + b
   a = b 
   b = sonuc 
end





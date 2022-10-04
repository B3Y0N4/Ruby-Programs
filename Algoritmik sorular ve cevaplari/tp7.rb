#Girilen sayinin tam bölenleri yazan program 
print "Sayi Giriniz: "
sayi = gets.chomp.to_i
for i in 1..sayi do
    if sayi % i == 0
        puts i
    end 
end
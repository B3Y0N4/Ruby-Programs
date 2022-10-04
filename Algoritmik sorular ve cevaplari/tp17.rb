print "karakter giriniz: "
c = gets.chomp
sayac = 0
t = ["a","z","l","d","e","s","g","z","a","j","c","l","b","n","a","f","e","r","s","a","u","e","b","c"]
t.each do |x|
    if x == c 
        sayac += 1
    end 
end 
print sayac
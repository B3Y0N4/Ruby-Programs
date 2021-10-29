h = {}
for i in 1..2 do
    print "Öğrencinin ismi giriniz: "
    isim = gets.chomp
    print "Öğrencinin Notunu giriniz: "
     note = gets.chomp.to_i 
    h[isim] = note
end
print h.sort
print "Dort basamakli sayini ilk rakami giriniz: "
ilk_rakam = gets.chomp
print "Dort basamakli sayini ikinci rakami giriniz: "
ikinci_rakam = gets.chomp
print "Dort basamakli sayini üçuncu rakami giriniz: "
ucuncu_rakam = gets.chomp
print "Dort basamakli sayini dortduncu rakami giriniz: "
dortduncu_rakam = gets.chomp
wxyz = (ilk_rakam + ikinci_rakam + ucuncu_rakam + dortduncu_rakam).to_i
wx = wxyz / 100
yz = wxyz % 100
x = wx + yz 
if x**2 == wxyz
    print  "#{wxyz} sayisi köksal sayisidir"
else 
    print "#{wxyz} sayisi köksal sayisi değildir"
end
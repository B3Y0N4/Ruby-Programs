print"a sayisini gir: "
a = gets.chomp.to_i
print"n sayisini gir: "
n = gets.chomp.to_i

toplam = 0
for i in 1..n do
    alan = (a / i)**2
    toplam = toplam + alan
end
puts"#{toplam}"
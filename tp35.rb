=begin
#star pattern to print squre 
    n = 5
    for i in 1..n do
        for j in 1..n  do
            print "* "
        end
        print "\n"
    end
=end 
=begin 
#star pattern to print incresing  triangle
    for x in 1..5 do
        for l in 1..x do
            print "* "
        end
        print "\n"
    end
=end 
=begin
#star pattern to print decrising  triangle
for i in 1..10 do
    for j in i..5 do
        print "* "
    end
    print "\n"
end
=end
=begin 
# right sided traiangle pattern
    n = 5
    for i in 1..n do
        for j in i..5 do
            print "  "
        end
        for l in 1..i do
            print "* "
        end
        print"\n"
    end
=end
# right sided traiangle pattern opposite
print "sayi giriniz: "
sayi = gets.chomp.to_i
dizi = Array.new(sayi) { Array.new(sayi) {0} }

for i in 0..dizi.length - 1 do
    j = 0
    while j <= i
        if j != i
            dizi[i][j] = dizi[i - 1][j - 1] + dizi[i - 1][j]
            print "#{dizi[i][j]}\t"
        elsif j == 0
            dizi[i][j] = 1
            print "#{dizi[i][j]}\t"
        else 
            dizi[i][j] = 1
            print "#{dizi[i][j]}\t"
        end
        j += 1
    end
    print "\n"
end
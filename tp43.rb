mesaj = "oussamasenadaminsonikiharfisin"

dizi = Array.new(mesaj.length / 2) {Array.new(2) {} }

k = 0
for i in 0..dizi.length - 1 do
    for j in 0..dizi[i].length - 1 do
        dizi[i][j] = mesaj[k].ord - 96
        k += 1
    end
end


print "#{dizi}\n"
a = [   [7, 8],
        [4, 5]
    ]
b =     [   [7, 8, 4],
            [4, 5, 2]
       ]
c = [   [],
        []
    ]
       for i in 0..(a.length)-1 do
           for j in 0..(a[i].length-1) do
               for k in 0..(b.length)-1 do
                   for l in 0..(b[k].length-1) do
                      c[i][l] =  a[i][j] * b[k][l]
                   end
               end
           end
       end
puts "#{c}"
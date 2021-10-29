print " K sayisini giriniz: "
k = gets.chomp.to_i
dizi = [9,6,7,8,5,4,9]
        for i in 0..dizi.size-1 do
            for j in i..(dizi.length-1)  do
                if i != j
                    if dizi[i] + dizi[j] == k 
                        puts "#{dizi[i]} + #{dizi[j]} = #{k}"
                    end
                end
            end
        end
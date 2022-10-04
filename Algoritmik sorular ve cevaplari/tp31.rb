for x in  1..99999 do
    i = x
    dizi = []
    sum = ""
    while x >= 1
        dizi = dizi.push(x)
        x = x / 2 
    end
        dizi = dizi.reverse
    for j in 0..(dizi.length-1) do
        if dizi[j].even?
             sum += 0.to_s
        else
              sum += 1.to_s
         end 
    end 
    sum = sum.to_i
    if sum.to_s.reverse.to_i == sum  &&  i.to_s.reverse.to_i == i
        puts "#{sum} is polindromik base2 and #{i} is a polindromik base10"
    end 
end 





    



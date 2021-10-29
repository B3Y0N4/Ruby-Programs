for i in 1..999 do
    for j in 1..999 do
        for k in 1..999 do
            if i != j && i !=k && j !=k 
                if (i**2) + ( j**2) == k**2 && i + j + k == 1000 
                     puts "i = #{i }  j = #{j}  k = #{k}"
                     test = true
                     break
                end 
            end 
        end
        if test
            break
       end
    end
    if test
   end
end





=begin
sayac = 1
while sayac <= 999999
    a = sayac / 100
    b = (sayac % 100) / 10
    c = sayac % 10
    if (a**2) + ( b**2) == c**2 && a + b + c == 1000
        puts "#{a } + #{b} = #{c}"
    end 
    sayac += 1
end
=end
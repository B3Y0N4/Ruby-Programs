for i in 1..9999 do
    sayac = 0
    for j in 2..i-1 do
        if i % j == 0
             sayac = sayac + 1
        end 
    end
    if sayac == 0
        puts i   
    end
end
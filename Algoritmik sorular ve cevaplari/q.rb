for i in  100..1000 do
    sayac = 0
    for j in 2..i-1 do
        if i % j == 0
            sayac = sayac + 1
        end
    end
    if sayac == 0  
        print "#{i}, "
    end 
end
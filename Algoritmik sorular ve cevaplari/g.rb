for i in 1..999 do
    for j in 1..999 do
        for k in 1..999 do
            if ((i**2) + (j**2) == (k**2)) && (i + j + k  == 1000)
                print "#{i}, #{j}, #{k}\n"
            end      
        end
    end
end

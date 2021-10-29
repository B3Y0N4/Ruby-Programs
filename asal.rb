
def asal_bul(i)
    sayac = 0
    for j in 2..i-1 do
        if i % j == 0
             sayac = sayac + 1
        end 
    end
        if sayac == 0 
         return i
        else 
         return 0
        end 
end
    for i in 1..100000 do
        asal = asal_bul(i)
        if asal != 0
            test = true 
        else
            test = false
        end
        while asal > 10 && test
            
            x =  asal / 10 
            ilginc_asal = asal_bul(x)
            if ilginc_asal == 0
                test = false
                break
            end
            asal = ilginc_asal
        end  
           
        if test
           puts i
        end
    end 

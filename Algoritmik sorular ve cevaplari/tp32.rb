def asal_bul(i)
    test = 0
       for j in 2..i-1 do
          if i % j == 0
           test += 1
          end 
       end
       if test == 0
           return i
       else 
         return 0
       end 
   end 


for i in 1..999 do
    asal = asal_bul(i)
    while i != 0
        k = i
        k = k % 10
        x = asal_bul(k)
        
    end
end






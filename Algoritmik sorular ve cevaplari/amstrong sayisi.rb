sayac = 1
while sayac < 9999
    sum = 0
    s = sayac.to_s
   for i in 0..(s.length-1) do
    sum = sum + (s[i].to_i ** s.length)
   end
      if sum == sayac 
        puts sayac 
      end 
   
    sayac += 1
end 

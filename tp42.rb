mesaj = "oussamasenadaminsonikiharfisin"
harf = *('a'..'z')
sayilar = ""
mesaj.each_char do |e| 
   for i in 0..(harf.length)-1 do
       if  harf[i] == e
        print " #{e}=#{i + 1} "
       end 
   end 
end


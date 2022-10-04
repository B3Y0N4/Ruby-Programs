def num
  s = 0
  for i in 100..999
       for j in 100..999
             sayi = i*j
             sayi1 =(sayi / 1000).to_s
             sayi2 = (sayi % 1000).to_s.reverse
            if ( sayi1 == sayi2 )
                 if ( sayi > s )
                     s = sayi
                 end 
            end
        end    
    end 
    printf "#{s}"
end 
num


for i in 100..999 do
  a = i / 100
  b =  (i % 100) / 10
  c = i % 10
  if a!= 0 && b!=0 && c!= 0
      abc = (100*a) + (10*b) + c 
      if   abc % a == 0 && abc % b == 0 && abc % c == 0 
        puts abc
      end 
  end 
end
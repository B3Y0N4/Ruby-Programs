# 3 ve 5 katlarin tolplami bulan program
#select the number that are evenly divisable by 3 or 5
sum = 0
for i in 1..999 do
    if(i % 3 == 0 ) || (i % 5 == 0 )
    
        sum = sum + i
    end 
end 
print sum
a = 0
b = 1
c = 0
sum = 0
while a < 4000000 
    a = b + c
    c = b 
    b = a  
    if a < 4000000 
        print"#{a}\n"
    end
    if a.even?
        sum =   sum + a 
    end
end 
print"sum: #{sum}\n"





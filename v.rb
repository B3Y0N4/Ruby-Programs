x = 4
n = 6
t = 0
for i in 1..n do
    if i.even?
        t = t + (x ** i) / i
    else 
        t = t - (x ** i) / i
    end
end
print t



=begin
print"x sayisini gir: "
x = gets.chomp.to_i
print"n sayisini gir: "
n = gets.chomp.to_i


t = 1
   for i in 1..n do
       if i.even?
           t = t + (x ** i) / i
       else 
           t = t - (x ** i) / i
       end
    end

print"#{t}"


=end
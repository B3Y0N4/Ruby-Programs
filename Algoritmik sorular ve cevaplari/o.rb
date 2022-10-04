print("bir sayi gir: ")
x = gets.chomp.to_i
enBuyuk = 0
count = 1
for j in 1..x do
    temp = j
    count = 1


    loop do
        if j.even?
          j = j / 2
        else
          j =  (3 * j ) + 1
        end 
        count = count + 1

        if j == 1
          break
        end
    end


    if count > enBuyuk
        i = temp
        enBuyuk = count
    end
 
end

print "#{i},"
loop do
  if i.even?
    i = i / 2
    print " #{i},"
  else
    i =  (3 * i ) + 1
    print " #{i},"
  end 

  if i == 1
    break
  end
end

    

en_buyuk = 0
for i in 1..999 do
    for j in 1..999 do
        sum = i * j
        product = sum
        product = product.to_s
        if sum > en_buyuk && product[0] == product[5] && product[1] == product[4]  && product[2] == product[3]
          en_buyuk = sum
        end 
    end
end
print en_buyuk
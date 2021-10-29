i = 1.0
j = 3.0
sum = 0
for index in 1..4 do
      if index.even?
        sum = sum - 1 / (i * j)
      else
        sum = sum + 1 / (i * j)
      end
      i = i + 1
      j = j + 1
end
print sum.to_f

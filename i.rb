#check how many numbers are grather than 5 in an array
dizi =Array(0..9)
sayac = 0
for i in 0..dizi.length-1 do
    if dizi[i] > 5 
        sayac += 1
    end 
   
end
print sayac

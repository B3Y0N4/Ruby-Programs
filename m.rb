print("bir sayi gir: ")
sayi = gets.chomp.to_i
deger = 0
bölenAdeti = 0
terim = 0
while bölenAdeti < sayi
    terim = terim + 1
    bölenAdeti = 0
    deger = deger + terim 
    for j in 1..deger do
        if deger % j == 0
            bölenAdeti = bölenAdeti + 1
        end
    end
end
print"kacinci terim: #{terim}.terim, ve onon degeri #{deger}"

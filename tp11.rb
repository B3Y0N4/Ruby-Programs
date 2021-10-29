# bir  ve sayinin kendisi hariç sayilarin tam bölenlerin yazan program
print "Sayi giriniz"
sayi = gets.chomp.to_i
for i in 2..sayi-1 do
    if sayi % i == 0
        puts i
    end
end

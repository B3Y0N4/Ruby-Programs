print "Sayi Giriniz: "
sayi =  gets.chomp
enBuyuk = 0
for i in 0..(sayi.length-3) do
    carpim = sayi[i].to_i * sayi[i+1].to_i * sayi[i+2].to_i
    if carpim > enBuyuk
        enBuyuk = carpim
    end
end
for i in 0..(sayi.length-3) do
    carpim = sayi[i].to_i * sayi[i+1].to_i * sayi[i+2].to_i
    if carpim == enBuyuk
        print"#{sayi[i]} * #{sayi[i+1]} * #{sayi[i+2]} = #{enBuyuk}"
        break
    end
end





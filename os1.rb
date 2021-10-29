toplam = 0
print "harf olarak sayi giriniz: "
sayi_harf = gets.chomp
dizi = sayi_harf.split

birinci_basamagi = ["sifir","bir","iki","uc","dort","bes","alti","yedi","sekiz","dokuz"]
onuncu_basamagi = ["","on","yirmi","otuz","kirk","elli","altmıs","yetmis","seksen","doksan"]
yuzuncu_basamagi =["","yuz","ikiyuz","ucyuz","dortyuz","besyuz","altiyuz","yediyuz","sekizyuz","dokuzyuz"]
bininci_basamagi =["","bin","ikibin","ucbin","dortbin","besbin","altibin","yedibin","sekizbin","dokuzbin"]
 
sayi = 0
for i in 0..dizi.length - 1 do
    if bininci_basamagi.include? dizi[i]
        for j in 0..bininci_basamagi.length - 1 do
            if bininci_basamagi[j] == dizi[i]
                sayi = sayi + j * 1000
            end
        end
    elsif yuzuncu_basamagi.include? dizi[i]
        for j in 0..yuzuncu_basamagi.length - 1 do
            if yuzuncu_basamagi[j] == dizi[i]
                sayi = sayi + j * 100
            end
        end
    elsif onuncu_basamagi.include? dizi[i]
        for j in 0..onuncu_basamagi.length - 1 do
            if onuncu_basamagi[j] == dizi[i]
                sayi = sayi + j * 10
            end
        end
    elsif birinci_basamagi.include? dizi[i]
        for j in 0..birinci_basamagi.length - 1 do
            if birinci_basamagi[j] == dizi[i]
                sayi = sayi + j
            end
        end
    end
end
puts "harf olarak girilen sayi: #{sayi}"
print "sayi giriniz: "
ek_sayi = gets.chomp.to_i
toplam = ek_sayi + sayi

if toplam >= 1 && toplam <= 9
    birler_basamak = toplam
    puts "toplam: #{birinci_basamagi[birler_basamak]}"
elsif toplam >= 10 && toplam <= 99
    birler_basamak = toplam % 10
    onlar_basamak = toplam / 10
    puts "toplam: #{onuncu_basamagi[onlar_basamak]} #{birinci_basamagi[birler_basamak]}"
elsif toplam >= 100 && toplam <= 999
    yuzler_basamak = toplam / 100
    onlar_basamak = (toplam % 100) / 10
    birler_basamak = toplam % 10
    puts "toplam: #{yuzuncu_basamagi[yuzler_basamak]} #{onuncu_basamagi[onlar_basamak]} #{birinci_basamagi[birler_basamak]}"
elsif toplam >= 1000 && toplam <= 9999
    binler_basamak = toplam / 1000
    yuzler_basamak = (toplam % 1000) / 100
    onlar_basamak = (toplam % 100) / 10
    birler_basamak = toplam % 10
    puts "toplam: #{bininci_basamagi[binler_basamak]} #{yuzuncu_basamagi[yuzler_basamak]} #{onuncu_basamagi[onlar_basamak]} #{birinci_basamagi[birler_basamak]}"
end

 


print "Sayi giriniz: "
sayi = gets.chomp.to_i
birler_basamagi = ["","I","II","III","IV","V","VI","VII","VIII","IX",]
onlar_basamagi = ["","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"]
yuzelr_basamagi = ["","C","CC","CCL","CD","D","DC","DCC","DCCC","CM"]
binler_basamaği = ["","M","MM","MMM","MMMM","V̅","V̅I̅","V̅I̅I̅","V̅I̅I̅I","I̅X̅"]
if sayi >= 1 && sayi <= 9
    print birler_basamagi[sayi]
elsif sayi >= 10 && sayi <= 99
    onlar_dizi = sayi / 10
    birler_dizi = sayi % 10
    print onlar_basamagi[onlar_dizi]+ birler_basamagi[birler_dizi]
elsif sayi >= 100 && sayi <= 999
    sayi >= 100 && sayi <=999
    yuzler_dizi = sayi / 100
    onlar_dizi = (sayi % 100) / 10
    birler_dizi = (sayi % 100) % 10
    print yuzelr_basamagi[yuzler_dizi] + onlar_basamagi[onlar_dizi] + birler_basamagi[birler_dizi]
elsif sayi >= 1000 && sayi <= 9999
    binler_dizi = sayi / 1000
    yuzler_dizi = (sayi % 1000) / 100
    onlar_dizi =  (((sayi % 1000) % 100) / 10)
    birler_dizi = ((sayi % 1000) % 10)
    print binler_basamaği[binler_dizi] + yuzelr_basamagi[yuzler_dizi] + onlar_basamagi[onlar_dizi] + birler_basamagi[birler_dizi]
end 
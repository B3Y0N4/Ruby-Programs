# sayi_ karakterine çevirme 
def yaziyla(sayi)
    bin_yuzler = ["","","iki","uc","dort","bes","alti","yedi","sekiz","dokuz"]
    onlar = ["","on","yirmi","otuz","kirk","elli","altmis","yetmis","seksen","doksan"]
    birler = ["","bir","iki","uc","dort","bes","alti","yedi","sekiz","dokuz"]
  
    birler_basamaği = sayi % 10 
    onlar_basamaği = (sayi % 100 ) / 10 
    yuzler_basamaği = (sayi % 1000) / 100
    binler_basamaği = (sayi % 10000) / 1000
     
   #yuz_binler = (sayi % 100000) / 10000

    yazi = ""
    yazi += "#{ bin_yuzler [binler_basamaği]} bin " if binler_basamaği > 0
    yazi += "#{ bin_yuzler [yuzler_basamaği]} yuz " if yuzler_basamaği > 0
    yazi += "#{ onlar [onlar_basamaği]} #{birler[birler_basamaği]}"

    yazi 
end 
print "sayi giriniz: "
sayi = gets.chomp.to_i
puts "yaziyla:  #{yaziyla(sayi)}" 
    
    

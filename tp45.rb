birinci_sayi = 1
while birinci_sayi < 10000
    birinci_sayinin_toplami = 0
    for i in 1..birinci_sayi do
        break if i == birinci_sayi
        if birinci_sayi %  i == 0
           # print "#{sayac},"
            birinci_sayinin_toplami += i
        end
    end
    #print "\n"
    #puts "birinci_sayi #{birinci_sayi} sayinin bölenlerin toplami #{birinci_sayinin_toplami}\n"
    ikinci_sayi = birinci_sayinin_toplami
    ikinci_sayinin_toplami = 0
    for i in 1..ikinci_sayi do
        break if i == ikinci_sayi
        if ikinci_sayi %  i == 0
            #print "#{i},"
            ikinci_sayinin_toplami += i
        end 
    end
    #print "\n"
    #puts "#{ikinci_sayinin_toplami}\n"
    if  birinci_sayi != ikinci_sayi && birinci_sayi == ikinci_sayinin_toplami && ikinci_sayi == birinci_sayinin_toplami
        puts "#{birinci_sayi} ve #{ikinci_sayi} sayilar bu zincire sağlaniyor"
    end 
    birinci_sayi += 1
end

 
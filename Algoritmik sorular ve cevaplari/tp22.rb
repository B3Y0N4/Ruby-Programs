    #Doğru Yöntem
    j = 0
    i = 0
    a = 0
    print("sayi giriniz: ")
    sayi = gets.chomp.to_i
    if sayi <= 123456789
        while (i <= sayi)
            for k in 0..9 do
                i = j
                a = a + (10**k)
                i+=a
                if (i > sayi)
                    break
                end
                print"#{i}, "
                j = i
                while (i % 10 != 9)
                    i+=a
                    if (i > sayi)
                        break
                    end
                    print"#{i}, "
                end
                if (i > sayi)
                    break
                end
            end
            if (i > sayi)
                    break
            end
        end
    else
        puts"sayi 123456789 dan kucuk olsun"
    end


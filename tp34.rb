s1 = "istanbul bursa ankara samsun izmir eskishehir sinop gaziantep bolu antalya denizli inegol bandirma osmangazi kocaeli"
s2 = "istanbul"
s3 = "GAMMA"
arr = s1.split
puts  "S1'de olan S2'lerin kaç tane olduğnu yazdirmak için 1"
puts  "S2 olan S1'leri silip ve yeni S1'rin halini yazmak için 2"
puts  "S1'de bulunan tüm S2’leri yerine 'GAMMA' yazidrmak için 3  "
puts  "S1'deki kelimeleri a ‘dan z’ye sıralamasına göre sıralamak ve S1'in yeni halini yazdirmak için 4"
puts   "S1'deki kelimeleri kendi uzunluklarına göre sıralamak için(Buyukten kuçuğe siralamak için) 5 tiklayiniz" 
secim = gets.chomp.to_i
if secim == 1
        count = 0
        for i in 0..(s1.length)-1 do
            if s1[i] == s2[0]
                konum = i+1
                sayac = 1
                for j in 1..(s2.length)-1
                    if s1[i+j] == s2[j]
                        sayac += 1
                    else 
                        break 
                    end 
                end 
                if sayac == s2.length
                    print "#{konum}, "
                    count +=1
                end 
            end 
        end
        print  "Ve #{count} kez"
elsif secim == 2
    y = ""
    i = 0
    k = 0
    while i < (s1.length)
        if s1[i] != s2[0]
            y[k] = s1[i]
            k += 1
        else
            sayac = 1
            for j in 1..(s2.length)-1 do
                if s1[i+j] == s2[j]
                    sayac += 1
                else 
                    y[k] = s1[i]
                    k += 1
                    break
                end 
            end 
            if sayac == s2.length
                i += (s2.length - 1)
            end
        end
        i += 1
    end 

    print y
elsif secim == 3
    y = ""
    i = 0
    k = 0
    while i < (s1.length)
        if s1[i] != s2[0]
            y[k] = s1[i]
            k += 1
        else
            sayac = 1
            for j in 1..(s2.length)-1 do
                if s1[i+j] == s2[j]
                    sayac += 1
                else 
                    y[k] = s1[i]
                    k += 1
                    break
                end 
            end 
            if sayac == s2.length
                for r in 0..(s3.length)-1 do
                    y[k] = s3[r]
                end 
                #y.insert(k, s3)
                k += s3.length
                i += (s2.length - 1)
            end
        end
        i += 1
    end 
    puts y
elsif secim == 4
    for i in 0..(arr.length)-1 do
        for j in (i + 1)..(arr.length) -1 do
            sayac = 0
            k = 0
            if arr[i][k].ord > arr[j][k].ord
                kelime = arr[j]
                arr[j] = arr[i]
                arr[i] = kelime
            elsif arr[i][k].ord == arr[j][k].ord
                k = 1
                if arr[i].length >= arr[j].length
                    sayac = 0
                    while k < arr[j].length
                        if arr[i][k].ord > arr[j][k].ord
                            kelime = arr[j]
                            arr[j] = arr[i]
                            arr[i] = kelime
                            break
                        elsif arr[i][k].ord == arr[j][k].ord
                            sayac += 1
                            k += 1
                            next
                        else
                            break
                        end
                        k += 1
                    end
                else
                    sayac = 0
                    while k < arr[i].length
                        if arr[i][k].ord > arr[j][k].ord
                            kelime = arr[j]
                            arr[j] = arr[i]
                            arr[i] = kelime
                            break
                        elsif arr[i][k].ord == arr[j][k].ord
                            sayac += 1
                            k += 1
                            next
                        else
                            break
                        end
                        k += 1
                    end
                end
            end  
            if sayac == arr[j].length
                kelime = arr[j]
                arr[j] = arr[i]
                arr[i] = kelime
            end
        end
        
    end
    print "#{arr}\n"
elsif secim == 5
   for i in 0..(arr.length)-1
    for j in (i + 1)..(arr.length)-1
            if arr[i].length > arr[j].length
                kelime = arr[j]
                arr[j] = arr[i]
                arr[i] = kelime 
            end 
        end 
    end 
    print "#{arr}\n"
end
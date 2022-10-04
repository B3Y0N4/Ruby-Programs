card_list = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21"]
def card_list_printer(card_list)
    i = 0
    while i < 21 
        puts "#{card_list[i]}  - #{card_list[i+ 1]}  - #{card_list[i + 2 ]} "
        i += 3
    end

end 
card_list_printer(card_list)

def coulums_sorter(secim,card_list)
    first_coloum  =  []
    second_coloum =  []
    third_coloum  =  []
    
    first_coloum_counter = 0
    while first_coloum_counter < 21
        first_coloum << card_list[first_coloum_counter]
        first_coloum_counter +=3 
    end


    second_coloum_counter = 1
    while second_coloum_counter < 21
        second_coloum = second_coloum.push(card_list[second_coloum_counter])
        second_coloum_counter +=3
    end

    third_coloum_counter = 2
    while third_coloum_counter < 21
        third_coloum = third_coloum.push(card_list[third_coloum_counter])
        third_coloum_counter +=3
    end

    if secim == 1 
        card_list = []
        #second_coloum = second_coloum
        #third_coloum = third_coloum
        for i in 0..(second_coloum.length)-1 do
            card_list << second_coloum[i]
        end

        for i in 0..(first_coloum.length)-1 do
            card_list << first_coloum[i]
        end

        for i in 0..(third_coloum.length)-1 do
            card_list << third_coloum[i]
        end
        print "\n"
        print card_list
        print "\n"
        card_list_printer(card_list)
    elsif secim == 2
        card_list = []
        for i in 0..(first_coloum.length)-1 do
            card_list << first_coloum[i]
        end
        for i in 0..(second_coloum.length)-1 do
            card_list << second_coloum[i]
        end
        for i in 0..(third_coloum.length)-1 do
            card_list << third_coloum[i]
        end
        print "\n"
        print card_list
        print "\n"
        card_list_printer(card_list)
    elsif secim == 3
        card_list = []
        #first_coloum = first_coloum
        #second_coloum = second_coloum
        for i in 0..(first_coloum.length)-1 do
            card_list << first_coloum[i]
        end
        for i in 0..(third_coloum.length)-1 do
            card_list << third_coloum[i]
        end
        for i in 0..(second_coloum.length)-1 do
            card_list << second_coloum[i]
        end
        print "\n"
        print card_list
        print "\n"
        card_list_printer(card_list)
    else 
        print "Geçersiz Seçim Yaptiniz 1 ile uç arasi seçim yapiniz "
    end 
end 
deneme = 1
while deneme <= 3
    print "Seçtiniz Kart Hangi Sİradadir: "
    secim = gets.chomp.to_i
    coulums_sorter(secim,card_list)
  deneme += 1
end

for i in 10..999 do
    for j in 10..999 do
        if i < j && (j % 10 != 0)
            payin_onlar = i / 10
            payin_birler = i % 10
            paydanin_onlar = j / 10
            paydanin_birler = j % 10
            if ((i.to_f / j).to_f  == (payin_onlar.to_f / paydanin_birler).to_f) && payin_birler == paydanin_onlar
                 puts "#{i} / #{j} = #{payin_onlar} / #{paydanin_birler}"
            end 
        end 
    end
end   


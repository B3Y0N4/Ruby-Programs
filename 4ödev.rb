for i in 10..99 
    for j in 10..99 
        if i < j
            pay = (i / 10).to_f
            payda = (j % 10).to_f
            if ((i % 10) == (j / 10)) && ((i.to_f / j.to_f) == (pay / payda))
            puts"#{i} / #{j}  = #{pay.to_i} / #{payda.to_i}"
            end 
        end 
    end
end


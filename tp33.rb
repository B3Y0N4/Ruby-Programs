#Yanliş yöntem guzel deneme
s1 = "pythonjavarubydartcsharprubyfantompascalrubyswift"
s2 = "sharp"
arr = ""
sayac = 0
indes = []
s1.each_char.with_index do |s,i|
        if s == s2[0] 
            arr += s 
        elsif arr[0] == s2[0] && s == s2[1] 
            arr += s
            indes = indes.push(i)
        elsif  arr[0] == s2[0] && arr[1] == s2[1] && s == s2[2] 
           arr += s
        elsif arr[0] == s2[0] && arr[1] == s2[1] && arr[2] == s2[2] &&  s == s2[3] 
            arr += s
        end 
        if arr == s2
           sayac +=1
        end 
end 
if sayac > 0 
   puts "#{sayac} kez var ve #{indes}konumlarinda bulunmadatir "
else 
    puts "Zincir mevcut değil"
end 


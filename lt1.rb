sayac = 1
arr = []
while sayac <= 5
        print "#{sayac}. birinci sayisi giriniz\n"
        nums = gets.chomp.to_i
        arr = arr.push(nums)
        sayac += 1
end 
 print "istenen sayi giriniz\n"
 target = gets.chomp.to_i
    for i in 0..(arr.length)-1 do
        for j in i+1..(arr.length)-1 do
             if arr[i] + arr[j] == target
                print  "Because #{arr[i]} + #{arr[j]} == #{target} we return [#{i}, #{j}].\n"
                break
             else 
                print "Because #{arr[i]} + #{arr[j]} != #{target} we could not add  [#{i}, #{j}] together.\n"
                break
             end 
        end 
    end 
[1,4,5,8].each_with_index do |num,idx|
    puts num
    if ((idx + 1 ) % 3 == 0)
        puts "end of line"
    end 
end 
#1
#4
#5
#end of line
#8
#end of line

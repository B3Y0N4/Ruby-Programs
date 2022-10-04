#Bsit Hesap Maakinasi
puts "Enter the first number :"
first_num = gets.chomp().to_f
puts "Enter the second number :"
second_num = gets.chomp().to_f
puts "Enter the operation"
op = gets.chomp()

if op == "+"
    puts (first_num + second_num)  
elsif op == "-"
    puts (first_num - second_num) 
elsif op == "/"
    puts (first_num / second_num)
elsif op == "*"
    puts first_num * second_num
else
    puts "İnvalid Opretor"    
end

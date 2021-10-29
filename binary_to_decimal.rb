=begin
print("sayi gir: ")
sayi = gets.chomp
sayi = sayi.reverse
dec = 0
for i in 0..sayi.length - 1 do
    dec = dec + sayi[i].to_i * 2**i
end

puts dec
=end 
require "base64"

string = 'ABDULJALAL'
encoded_string = Base64.encode64(string)
puts encoded_string
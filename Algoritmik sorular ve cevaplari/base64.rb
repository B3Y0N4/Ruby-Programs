#Convert Character to ascci 
#Regroup the character in ascii reprisentation to 6 bite insted of 8 bite
#By combining all the binary then divide them in bites
#convert the 6 bites group to decimal numbers
#convert the decimal numbers in base 64 table character
class Binary
    def self.to_decimal(binary)
    raise ArgumentError if binary.match?(/[^01]/)
    binary.reverse.chars.map.with_index do |digit, index|
        digit.to_i * 2**index
    end.sum
    end
end
def decode_message_in_base64 (message)
ascii_in_binary = []
dizi = []
karater_in_ascii = []
    message.each_char do |karakter|
     dizi << karakter
     #first convert the character to ascci decimal
     karater_in_ascii <<karakter.ord
     #Decimal to binarry
    end 
    #base_ten_to_base_two(karater_in_ascii)
print "#{dizi}\n"
print "#{karater_in_ascii}\n"
    for x in 0..(karater_in_ascii.length)-1
        arr = []
        char_binary = ""
        while karater_in_ascii[x] >= 1
            arr = arr.push(karater_in_ascii[x])
            karater_in_ascii[x] = karater_in_ascii[x] / 2 
        end
        arr = arr.reverse
        char_binary << 0.to_s
        for i in 0..(arr.length-1) do
            if arr[i].even?
                char_binary << 0.to_s
            elsif arr[i].odd?
                char_binary << 1.to_s
            end 
        end
        ascii_in_binary << char_binary
    end
puts "characters in binary #{ascii_in_binary}"
# concatenating all the binary values together 
binary_concatating = ""
for j in 0..(ascii_in_binary.length)-1
  binary_concatating << ascii_in_binary[j]
end 
if binary_concatating.length.odd?
      binary_concatating.pop("00")
end 
puts "Joined binary #{binary_concatating}"
divide_binary = []
bit = ""
l = 0
sayac = 0
    for z in 0..(binary_concatating.length)-1
        if  sayac <= 5
            bit += binary_concatating[z]
            sayac += 1
        end
            if sayac == 6
                sayac = 0
                divide_binary << bit
                bit = ""
            end    
    end 
print "Divided  binary #{divide_binary}\n"
#print binary_to_decimal
dec = 0
binary_to_decimal = []
    for r in 0..(divide_binary.length)-1 do
        binary_to_decimal << Binary.to_decimal(divide_binary[r])
    end
sifre = ""
y = 0
mesajin_sifrelenmis_hali = ""
print  binary_to_decimal
binary_to_decimal.each do |num|
    if num >= 0 && num <= 25
                sifre = (num + 65).chr
                mesajin_sifrelenmis_hali << sifre
    elsif num >= 26 && num <= 51
            sifre = (num + 71).chr
            mesajin_sifrelenmis_hali << sifre
    elsif num >= 52 && num <= 61
            sifre = (num - 4).chr
            mesajin_sifrelenmis_hali << sifre
    elsif num == 62
            sifre = (num - 19).chr
            mesajin_sifrelenmis_hali << sifre
    elsif num == 63
            sifre = (num - 16).chr
            mesajin_sifrelenmis_hali << sifre
    end 
    end 
    print mesajin_sifrelenmis_hali
end 
message = "MENON"
decode_message_in_base64(message)
#QUJEVUxKQUxBTA==
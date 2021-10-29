def caesar_cipher(string, shift)
    string_nowarray = string.chars 
    finalword = []
    string_nowarray.map do |char| 
      if char.ord > 96 && char.ord < 123 
        newchar = char.ord + (shift % 26)
        if newchar.ord > 122 
          correctchar = newchar.ord - 122 + 96
          finalword.push(correctchar.chr)
        elsif 
          finalword.push(newchar.chr)
        end
      elsif char.ord > 64 && char.ord < 91
        newchar = char.ord + (shift % 26)
        if newchar.ord > 90
          correctchar = newchar.ord - 90 + 64
          finalword.push(correctchar.chr)
        elsif
          finalword.push(newchar.chr)
        end
      else
        finalword.push(char)                  
      end  
    end
    puts finalword.join("")
  end  
  
  caesar_cipher("CoCo_LiZo es el mejor", 180)
  caesar_cipher("What a string!", 5)
  caesar_cipher("AmAm_JgXm cq cj kchmp", -180)
  caesar_cipher("Bmfy f xywnsl!", -5)
  
  
  # de 65 a 90 y de 97 a 122
  # usar % remainder o modulo
  # if newchar.chr > 122 >>>> hacer newchar.chr - 122 y despues sumarlo a 96
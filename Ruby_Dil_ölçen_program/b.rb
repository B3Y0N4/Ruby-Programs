a = File.readlines('kelimeler.txt')
ingilizce = []
turkce = []

a.each do |e|
  b = e.chomp.split(' : ')
  ingilizce << b[0]
  turkce << b[1]
end

sozluk_i = {}
sozluk_t = {}
i = 0

until i == 179
  sozluk_i[ingilizce[i]] = turkce[i]
  sozluk_t[turkce[i]] = ingilizce[i]
  i += 1
end

puts 'İngilize-Türkçe testi için 1 sayısını girin.'
puts 'Türkçe-İngilizce testi için 2 sayısını girin.'
print 'Seçim: '
x = gets.chomp.to_i

case x
when 1
  e = ingilizce.shuffle
  soru = [e[0], e[1], e[2], e[3]]
  t = turkce.shuffle

  c1 = [sozluk_i[e[0]]]
  c2 = [sozluk_i[e[1]]]
  c3 = [sozluk_i[e[2]]]
  c4 = [sozluk_i[e[3]]]

  i1 = 0
  i2 = 5
  i3 = 10
  i4 = 15

  until c1.size == 4
    if t[i1] == sozluk_i[e[0]]
      i1 += 1
      next
    end
    c1 << t[i1]
    if t[i2] == sozluk_i[e[1]]
      i2 += 1
      next
    end
    c2 << t[i2]
    if t[i3] == sozluk_i[e[2]]
      i3 += 1
      next
    end
    c3 << t[i3]
    if t[i4] == sozluk_i[e[3]]
      i4 += 1
      next
    end
    c4 << t[i4]

    i1 += 1
    i2 += 1
    i3 += 1
    i4 += 1
  end

  c1.shuffle!
  c2.shuffle!
  c3.shuffle!
  c4.shuffle!

  c11 = { 'A' => c1[0], 'B' => c1[1], 'C' => c1[2], 'D' => c1[3] }
  c22 = { 'A' => c2[0], 'B' => c2[1], 'C' => c2[2], 'D' => c2[3] }
  c33 = { 'A' => c3[0], 'B' => c3[1], 'C' => c3[2], 'D' => c3[3] }
  c44 = { 'A' => c4[0], 'B' => c4[1], 'C' => c4[2], 'D' => c4[3] }

  puts "1. Soru: #{soru[0]} kelimesinin İngilizce karşılığı nedir?"
  puts "A) #{c1[0]}"
  puts "B) #{c1[1]}"
  puts "C) #{c1[2]}"
  puts "D) #{c1[3]}"
  print 'Cevap: '
  g1 = gets.chomp.upcase

  puts "2. Soru: #{soru[1]} kelimesinin İngilizce karşılığı nedir?"
  puts "A) #{c2[0]}"
  puts "B) #{c2[1]}"
  puts "C) #{c2[2]}"
  puts "D) #{c2[3]}"
  print 'Cevap: '
  g2 = gets.chomp.upcase

  puts "3. Soru: #{soru[2]} kelimesinin İngilizce karşılığı nedir?"
  puts "A) #{c3[0]}"
  puts "B) #{c3[1]}"
  puts "C) #{c3[2]}"
  puts "D) #{c3[3]}"
  print 'Cevap: '
  g3 = gets.chomp.upcase

  puts "4. Soru: #{soru[3]} kelimesinin İngilizce karşılığı nedir?"
  puts "A) #{c4[0]}"
  puts "B) #{c4[1]}"
  puts "C) #{c4[2]}"
  puts "D) #{c4[3]}"
  print 'Cevap: '
  g4 = gets.chomp.upcase

  if c11[g1] == sozluk_i[soru[0]] && c22[g2] == sozluk_i[soru[1]] && c33[g3] == sozluk_i[soru[2]] && c44[g4] == sozluk_i[soru[3]]
    puts 'Tebrikler! Tüm soruları bildiniz ve 100 puan aldınız!'
  elsif c22[g2] == sozluk_i[soru[1]] && c33[g3] == sozluk_i[soru[2]] && c44[g4] == sozluk_i[soru[3]]
    puts '75 puan aldınız.'
    puts "1. sorunun cevabı: #{sozluk_i[soru[0]]}"
  elsif c11[g1] == sozluk_i[soru[0]] && c33[g3] == sozluk_i[soru[2]] && c44[g4] == sozluk_i[soru[3]]
    puts '75 puan aldınız.'
    puts "2. sorunun cevabı: #{sozluk_i[soru[1]]}"
  elsif c11[g1] == sozluk_i[soru[0]] && c22[g2] == sozluk_i[soru[1]] && c44[g4] == sozluk_i[soru[3]]
    puts '75 puan aldınız.'
    puts "3. sorunun cevabı: #{sozluk_i[soru[2]]}"
  elsif c11[g1] == sozluk_i[soru[0]] && c22[g2] == sozluk_i[soru[1]] && c33[g3] == sozluk_i[soru[2]]
    puts '75 puan aldınız.'
    puts "4. sorunun cevabı: #{sozluk_i[soru[3]]}"
  elsif c33[g3] == sozluk_i[soru[2]] && c44[g4] == sozluk_i[soru[3]]
    puts '50 puan aldınız.'
    puts "1. ve 2. soruların cevapları: #{sozluk_i[soru[0]]}, #{sozluk_i[soru[1]]}"
  elsif c22[g2] == sozluk_i[soru[1]] && c44[g4] == sozluk_i[soru[3]]
    puts '50 puan aldınız.'
    puts "1. ve 3. soruların cevapları: #{sozluk_i[soru[0]]}, #{sozluk_i[soru[2]]}"
  elsif c22[g2] == sozluk_i[soru[1]] && c33[g3] == sozluk_i[soru[2]]
    puts '50 puan aldınız.'
    puts "1. ve 4. soruların cevapları: #{sozluk_i[soru[0]]}, #{sozluk_i[soru[3]]}"
  elsif c11[g1] == sozluk_i[soru[0]] && c44[g4] == sozluk_i[soru[3]]
    puts '50 puan aldınız.'
    puts "2. ve 3. soruların cevapları: #{sozluk_i[soru[1]]}, #{sozluk_i[soru[2]]}"
  elsif c11[g1] == sozluk_i[soru[0]] && c33[g3] == sozluk_i[soru[2]]
    puts '50 puan aldınız.'
    puts "2. ve 4. soruların cevapları: #{sozluk_i[soru[1]]}, #{sozluk_i[soru[3]]}"
  elsif c11[g1] == sozluk_i[soru[0]] && c22[g2] == sozluk_i[soru[1]]
    puts '50 puan aldınız.'
    puts "3. ve 4. soruların cevapları: #{sozluk_i[soru[2]]}, #{sozluk_i[soru[3]]}"
  elsif c11[g1] == sozluk_i[soru[0]]
    puts '25 puan aldınız.'
    puts "2, 3 ve 4. soruların cevapları: #{sozluk_i[soru[1]]}, #{sozluk_i[soru[2]]}, #{sozluk_i[soru[3]]}"
  elsif c22[g2] == sozluk_i[soru[1]]
    puts '25 puan aldınız.'
    puts "1, 3 ve 4. soruların cevapları: #{sozluk_i[soru[0]]}, #{sozluk_i[soru[2]]}, #{sozluk_i[soru[3]]}"
  elsif c33[g3] == sozluk_i[soru[2]]
    puts '25 puan aldınız.'
    puts "1, 2 ve 4. soruların cevapları: #{sozluk_i[soru[0]]}, #{sozluk_i[soru[1]]}, #{sozluk_i[soru[3]]}"
  elsif c44[g4] == sozluk_i[soru[3]]
    puts '25 puan aldınız.'
    puts "1, 2 ve 3. soruların cevapları: #{sozluk_i[soru[0]]}, #{sozluk_i[soru[1]]}, #{sozluk_i[soru[2]]}"
  else
    puts 'Maalesef bu testten hiç puan alamadınız.'
    puts "Sırasıyla soruların cevapları: #{sozluk_i[soru[0]]}, #{sozluk_i[soru[1]]}, #{sozluk_i[soru[2]]}, #{sozluk_i[soru[3]]}"
  end
when 2
  t = turkce.shuffle
  soru = [t[0], t[1], t[2], t[3]]
  e = ingilizce.shuffle

  c1 = [sozluk_t[t[0]]]
  c2 = [sozluk_t[t[1]]]
  c3 = [sozluk_t[t[2]]]
  c4 = [sozluk_t[t[3]]]

  i1 = 0
  i2 = 5
  i3 = 10
  i4 = 15

  until c1.size == 4
    if e[i1] == sozluk_t[t[0]]
      i1 += 1
      next
    end
    c1 << e[i1]
    if e[i2] == sozluk_t[t[1]]
      i2 += 1
      next
    end
    c2 << e[i2]
    if e[i3] == sozluk_t[t[2]]
      i3 += 1
      next
    end
    c3 << e[i3]
    if e[i4] == sozluk_t[t[3]]
      i4 += 1
      next
    end
    c4 << e[i4]

    i1 += 1
    i2 += 1
    i3 += 1
    i4 += 1
  end

  c1.shuffle!
  c2.shuffle!
  c3.shuffle!
  c4.shuffle!

  c11 = { 'A' => c1[0], 'B' => c1[1], 'C' => c1[2], 'D' => c1[3] }
  c22 = { 'A' => c2[0], 'B' => c2[1], 'C' => c2[2], 'D' => c2[3] }
  c33 = { 'A' => c3[0], 'B' => c3[1], 'C' => c3[2], 'D' => c3[3] }
  c44 = { 'A' => c4[0], 'B' => c4[1], 'C' => c4[2], 'D' => c4[3] }

  puts "1. Soru: #{soru[0]} kelimesinin Türkçe karşılığı nedir?"
  puts "A) #{c1[0]}"
  puts "B) #{c1[1]}"
  puts "C) #{c1[2]}"
  puts "D) #{c1[3]}"
  print 'Cevap: '
  g1 = gets.chomp.upcase

  puts "2. Soru: #{soru[1]} kelimesinin Türkçe karşılığı nedir?"
  puts "A) #{c2[0]}"
  puts "B) #{c2[1]}"
  puts "C) #{c2[2]}"
  puts "D) #{c2[3]}"
  print 'Cevap: '
  g2 = gets.chomp.upcase

  puts "3. Soru: #{soru[2]} kelimesinin Türkçe karşılığı nedir?"
  puts "A) #{c3[0]}"
  puts "B) #{c3[1]}"
  puts "C) #{c3[2]}"
  puts "D) #{c3[3]}"
  print 'Cevap: '
  g3 = gets.chomp.upcase

  puts "4. Soru: #{soru[3]} kelimesinin Türkçe karşılığı nedir?"
  puts "A) #{c4[0]}"
  puts "B) #{c4[1]}"
  puts "C) #{c4[2]}"
  puts "D) #{c4[3]}"
  print 'Cevap: '
  g4 = gets.chomp.upcase

  if c11[g1] == sozluk_t[soru[0]] && c22[g2] == sozluk_t[soru[1]] && c33[g3] == sozluk_t[soru[2]] && c44[g4] == sozluk_t[soru[3]]
    puts 'Tebrikler! Tüm soruları bildiniz ve 100 puan aldınız!'
  elsif c22[g2] == sozluk_t[soru[1]] && c33[g3] == sozluk_t[soru[2]] && c44[g4] == sozluk_t[soru[3]]
    puts '75 puan aldınız.'
    puts "1. sorunun cevabı: #{sozluk_t[soru[0]]}"
  elsif c11[g1] == sozluk_t[soru[0]] && c33[g3] == sozluk_t[soru[2]] && c44[g4] == sozluk_t[soru[3]]
    puts '75 puan aldınız.'
    puts "2. sorunun cevabı: #{sozluk_t[soru[1]]}"
  elsif c11[g1] == sozluk_t[soru[0]] && c22[g2] == sozluk_t[soru[1]] && c44[g4] == sozluk_t[soru[3]]
    puts '75 puan aldınız.'
    puts "3. sorunun cevabı: #{sozluk_t[soru[2]]}"
  elsif c11[g1] == sozluk_t[soru[0]] && c22[g2] == sozluk_t[soru[1]] && c33[g3] == sozluk_t[soru[2]]
    puts '75 puan aldınız.'
    puts "4. sorunun cevabı: #{sozluk_t[soru[3]]}"
  elsif c33[g3] == sozluk_t[soru[2]] && c44[g4] == sozluk_t[soru[3]]
    puts '50 puan aldınız.'
    puts "1. ve 2. soruların cevapları: #{sozluk_t[soru[0]]}, #{sozluk_t[soru[1]]}"
  elsif c22[g2] == sozluk_t[soru[1]] && c44[g4] == sozluk_t[soru[3]]
    puts '50 puan aldınız.'
    puts "1. ve 3. soruların cevapları: #{sozluk_t[soru[0]]}, #{sozluk_t[soru[2]]}"
  elsif c22[g2] == sozluk_t[soru[1]] && c33[g3] == sozluk_t[soru[2]]
    puts '50 puan aldınız.'
    puts "1. ve 4. soruların cevapları: #{sozluk_t[soru[0]]}, #{sozluk_t[soru[3]]}"
  elsif c11[g1] == sozluk_t[soru[0]] && c44[g4] == sozluk_t[soru[3]]
    puts '50 puan aldınız.'
    puts "2. ve 3. soruların cevapları: #{sozluk_t[soru[1]]}, #{sozluk_t[soru[2]]}"
  elsif c11[g1] == sozluk_t[soru[0]] && c33[g3] == sozluk_t[soru[2]]
    puts '50 puan aldınız.'
    puts "2. ve 4. soruların cevapları: #{sozluk_t[soru[1]]}, #{sozluk_t[soru[3]]}"
  elsif c11[g1] == sozluk_t[soru[0]] && c22[g2] == sozluk_t[soru[1]]
    puts '50 puan aldınız.'
    puts "3. ve 4. soruların cevapları: #{sozluk_t[soru[2]]}, #{sozluk_t[soru[3]]}"
  elsif c11[g1] == sozluk_t[soru[0]]
    puts '25 puan aldınız.'
    puts "2, 3 ve 4. soruların cevapları: #{sozluk_t[soru[1]]}, #{sozluk_t[soru[2]]}, #{sozluk_t[soru[3]]}"
  elsif c22[g2] == sozluk_t[soru[1]]
    puts '25 puan aldınız.'
    puts "1, 3 ve 4. soruların cevapları: #{sozluk_t[soru[0]]}, #{sozluk_t[soru[2]]}, #{sozluk_t[soru[3]]}"
  elsif c33[g3] == sozluk_t[soru[2]]
    puts '25 puan aldınız.'
    puts "1, 2 ve 4. soruların cevapları: #{sozluk_t[soru[0]]}, #{sozluk_t[soru[1]]}, #{sozluk_t[soru[3]]}"
  elsif c44[g4] == sozluk_t[soru[3]]
    puts '25 puan aldınız.'
    puts "1, 2 ve 3. soruların cevapları: #{sozluk_t[soru[0]]}, #{sozluk_t[soru[1]]}, #{sozluk_t[soru[2]]}"
  else
    puts 'Maalesef bu testten hiç puan alamadınız.'
    puts "Sırasıyla soruların cevapları: #{sozluk_t[soru[0]]}, #{sozluk_t[soru[1]]}, #{sozluk_t[soru[2]]}, #{sozluk_t[soru[3]]}"
  end
else
  puts 'Geçersiz test sayısını girdiniz.'
end
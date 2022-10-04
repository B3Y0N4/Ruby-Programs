# frozen_string_literal: true

sayac = 0
skor_x = 0
skor_o = 0
game_board = {
  1 => '   ',
  2 => '   ',
  3 => '   ',
  4 => '   ',
  5 => '   ',
  6 => '   ',
  7 => '   ',
  8 => '   ',
  9 => '   '
}

def degistir(hash, index, sira)
  hash[index] = if (sira % 2).even?
                  ' x '
                else
                  ' 0 '
                end
end

def check_win?(hash, asd, bsd, csd)
  if hash[asd] == '   '
    false
  elsif hash[asd] == hash[bsd] && (hash[bsd] == hash[csd])
    hash[asd]
  end
end

def new_game(hash)
  hash.each_key { |key| hash[key] = '   ' }
  hash
end

def exit_or_cont(sayac, input)
  case input
  when 1
    sayac = 50
  when 9
    sayac = 100
  else
    puts 'Hatali giriş'
  end
  sayac
end
kazanma_durumlari = [[1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7], [4, 5, 6], [1, 2, 3], [7, 8, 9]]
until sayac == 100
  puts
  puts
  puts  "#{game_board.values[0]}|#{game_board.values[1]}|#{game_board.values[2]}           1 | 2 | 3"
  puts  '---|---|---          ---|---|---'
  puts  "#{game_board.values[3]}|#{game_board.values[4]}|#{game_board.values[5]}   ==>     4 | 5 | 6"
  puts  '---|---|---          ---|---|---'
  puts  "#{game_board.values[6]}|#{game_board.values[7]}|#{game_board.values[8]}           7 | 8 | 9"
  puts
  kazanma_durumlari.each do |array|
    case check_win?(game_board, array[0], array[1], array[2])
    when ' x '
      skor_x += 1
      puts "X kazandi\nX: #{skor_x}\tY:#{skor_o}\nDevam etmek için 1'i çikmak için 9'u tuşlayiniz"
      input = gets.chomp.to_i
      sayac = exit_or_cont(sayac, input)
    when ' 0 '
      skor_o += 1
      puts "0 kazandi\nX: #{skor_x}\tY:#{skor_o}\nDevam etmek için 1'i çikmak için 9'u tuşlayiniz"
      input = gets.chomp.to_i
      sayac = exit_or_cont(sayac, input)
    end
  end
  if sayac < 9
    if (sayac % 2).even?
      puts "Sira X'de"
    else
      puts "Sira 0'da"
    end
    konum = gets.chomp.to_i
    if game_board[konum] == '   '
      degistir(game_board, konum, sayac)
      sayac += 1
    else
      puts 'Bu noktaya konulamaz!'
    end
  elsif sayac == 9
    puts "Berabere!\nX: #{skor_x}\t0:#{skor_o}\nDevam etmek için 1'i çikmak için 9'u tuşlayiniz"
    input = gets.chomp.to_i
    sayac = exit_or_cont(sayac, input)
  elsif sayac == 50
    sayac = 0
    game_board = new_game(game_board)
  end
end



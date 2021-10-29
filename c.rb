#Guessing game
print "Enter a number"
num = gets.chomp.to_i
s_num = rand(0..10)
guess_count = 0
while num != s_num
    if num > s_num 
        print"your guess was high, enter a lower number."
    else 
      print  "your guess was low, enter a higher number."
    end 
      num = gets.chomp.to_i
      guess_count += 1
      break if guess_count >= 5
end
if s_num != num 
    print "You failed to guess the number in #{guess_count} tries"
else    
puts("Good job,  You guessed the number in #{guess_count} tries.")
end 



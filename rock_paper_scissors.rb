print "What do you cho0se? Type 0 for rock, 1 for paper, 2 for scissors: "
user_choise = gets.chomp
posible_choise = ["rock","papper","scissors"]
computer_choise = posible_choise[rand(3)]
if user_choise == 1 && computer_choise 
    print("Both players selected #{user_action}. It's a tie!")
elsif user_choise == 1 && computer_choise == posible_choise[2]
    print "You Lose"
end 
print computer_choise
anonyms_word = {:spor => "oussama", :right => "left", :tall => "short"}
print "Kelime Giriniz: "
kelime = gets.chomp
anonyms_word.map { |key,value|
 if key == kelime 
    print "#{kelime}nin ziti #{value}"
 end 

}
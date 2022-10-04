require "base64"
def add_to_maneger_with_encryting_the_password(account,password)
     encrypted_pdw =  Base64.encode64(password)
    File.open("password_manegement.txt", "a") do |text|  
        text.write("\n #{account} | #{encrypted_pdw}") 
    end 
end 
def add_to_maneger_with_out_encrypment(account,password)
   File.open("password_manegement.txt", "a") do |text|  
       text.write("\n #{account} | #{password}") 
   end 
end 
def veiw_saved_account()
    saved_password =  File.read("password_manegement.txt")
    print saved_password
end 
def view_saved_encrypted_password()
    print "Enter the decrypted password"
    decrypted_password = gets.chomp
    encrypment = Base64.decode64(decrypted_password) 
    print ("Şireneziniz Çözulmuş hali #{encrypment}dur.")
end 

print  "                                            Abduljalal Şifre Manegerine Hoşgeldiniz. 
                                                Eski şifelerinizi Görmek için 1
                                                Yeni şifreyi Şifrelenerek kaydetmet için 2
                                                Yeni Şifreyi Şifrelenmeden Kaydetmek için 3
                                                Şifrelenmiş şifrelerinizi Çözmek için 3
                                                                                                                                 "
secim = gets.chomp.to_i
if secim == 1 
       veiw_saved_account()
elsif secim == 2
     puts "DİKKAT! Girmek Üzere Olduğnuz Şifre Şifrelenerek Kaydedilcektir."
    print  "Hesanin isimi Giriniz: "
    account = gets.chomp
    print "Girmiş olduğnuz Hesabin Şifresini Giriniz: "
    password = gets.chomp
    add_to_maneger_with_encryting_the_password(account,password)
elsif secim == 3
    




#decrypt_password()
#veiw_saved_account()
#account = "İnstagram"
#password = "jalal_jr_78513"
#add_to_maneger(account,password)

           
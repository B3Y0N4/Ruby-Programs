require 'json'
file = File.read('data.json')
data_hash = JSON.parse(file)
print ("Enter Word:")
word = gets.chomp.downcase
print data_hash[word]
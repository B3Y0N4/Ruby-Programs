hash = {:a => 1,:b => 2, :c => 3, :d => 4}
hash[:e] = 5
hash.delete_if {|k,v| v < 3.5}
 
#hash value as array 
hash_value_as_array = {:my_favorite_junk_food => ["hamburger","cıtır tavuk", "pizza, sushi"]}
print hash_value_as_array
#array of hashes 
array = [ {:a => 4, :e =>5} ,{:ask => "bos", :insanlar => "bombos"} ]
print array.length


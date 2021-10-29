dizi2 = []
dizi3 = []
dizi = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
dizi.each {|num| dizi2 = dizi2.push(num) if num > 5}
 dizi2.select {|number| dizi3 = dizi3.push(number) if number % 2 != 0 }
 dizi << 11 #add new element to the end of an array
 dizi.unshift(0) #add new element to the begining of an array
 dizi.pop #add last  element in an array
 dizi << 3
 print "#{dizi} \n"
 print dizi3



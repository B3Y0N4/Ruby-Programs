#check if number is a prime number 
def how_prime_number_are_in_given_numver(array)
    prime_count = 0
    for item in array
        is_prime = is_prime(item)    
        if is_prime 
          prime_count = prime_count + 1
        end 
    end
     return prime_count
end 
          
def is_prime(item)
    return false if item == 1
     number = item - 1
    while number > 1
        if item % number == 0
            return false 
           break 
        else
         number = number - 1   
        end 
    end
    return true 
end 

array = [1,2,3,4,5,6,7,8,9,10]
puts how_prime_number_are_in_given_numver(array)
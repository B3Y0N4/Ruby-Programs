# case satement
def get_day_name(day)
  day_name = ""
    case day
        when "mon"
             day_name = "Monday"
        when "tue" 
             day_name = "Tuesday"
        when "wed" 
             day_name = "Wedsday"
        when "thu"
                day_name = "Thursday"
        when "fri"
                 day_name = "Friday"
        when "sat" 
                day_name = "Saturday"        
         when "sun" 
                 day_name ="Sunday"    
    else
        print "İnvalid Abbreviation"  
    end


    return day_name
end 
puts  get_day_name(wed)
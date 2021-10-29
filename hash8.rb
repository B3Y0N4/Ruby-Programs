#To be countenue
contact_data = [["oussama@email.com", "algri tipaza st.", "552-958-2055"],
            ["ammar@email.com", "banduh indonesia.st", "552-234-3454"]]

contacts = {"Oussama Samer" => {}, "Ammar Uhbada" => {}}
fields = [:email, :address, :phone]
contacts.each_with_index do |(name, hash), idx|
    fields.each do |field|
      hash[field] = contact_data[idx].shift
    end
  end
  p contacts


def nyc_pigeon_organizer(data)

  pigeon_list = {}
  data.each do |key, value|
    value.each do |attribute, person|
      
      person.each do |n|
        if !pigeon_list[n]
          pigeon_list[n] = {}
        end 
        
        
        if !pigeon_list[n][key]
          pigeon_list[n][key] = []
        end 
        pigeon_list[n][key] << attribute.to_s
      end
    
    end
  end
  pigeon_list
end 

# dataset
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



# test in-file
# nyc_pigeon_organizer(pigeon_data)
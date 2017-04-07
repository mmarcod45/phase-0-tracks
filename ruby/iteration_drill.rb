# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each do |item|
	puts "* #{item} *"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

alphabet = "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvUwWxXyYzZ"

counter = 0 
while counter < alphabet.length

  zombie_apocalypse_supplies.each do |item|
    if item[0] == alphabet[counter] #"a"
      zombie_apocalypse_supplies.index(item)
      position = zombie_apocalypse_supplies.index(item)
      move_end = zombie_apocalypse_supplies[position]
      zombie_apocalypse_supplies.delete_at(position)
      zombie_apocalypse_supplies << move_end
    end 
  end 
  counter += 1 
end 

p zombie_apocalypse_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

#def search(string)
  zombie_apocalypse_supplies.each do |item|
    if item == "boots"
      puts item
    end 
  end 
#end 

#search("boots")

# this below also works. The array would need to be inside the search method for it to be accessible. 

def search(string)
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
  zombie_apocalypse_supplies.each do |item|
    if item == string
      puts item
    end 
  end 
end 

search("boots")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

p only_five = zombie_apocalypse_supplies[0..4]

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
# ----

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
  
combined_array = []     

zombie_apocalypse_supplies.each do |item|
  combined_array << item 
end 

other_survivor_supplies.each do |item2|
  if !zombie_apocalypse_supplies.include? item2
    combined_array << item2
  end 
end 

p combined_array

### THIS ALSO WORKS
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

combined_array = []
combined_array = (zombie_apocalypse_supplies).concat(other_survivor_supplies)
p combined_array

p combined_array.uniq



# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |animal, year|
  puts "*#{animal} - #{year}*"
end 

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

extinct_animals.delete_if {|animal, year| year > 2000 }

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, year|
  extinct_animals[animal] = year - 3 
end 

p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, year|
  if animal == "Dodo"
    puts "That animal is extinct"
  else 
    puts "That animal IS NOT extinct"
  end 
end 

###### or 

p extinct_animals.has_key?("Andean Cat")
p extinct_animals.has_key?("Dodo")
p extinct_animals.has_key?("Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

not_extinct = extinct_animals.tap { |h| h.delete("Passenger Pigeon") } 
#p extinct_animals
p not_extinct.to_a


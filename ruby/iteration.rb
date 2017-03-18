def disney_park
	puts "Hello, Welcome!"
	yield("Big Thunder Mountain", "Disney World")
#	ride = "Big Thunder Mountain"
#	park = "Disney World"
#	yield(ride, park)
end 

disney_park { |ride, park| puts "You are about to ride #{ride} at #{park}!"}




shades_blue = ["indigo", "cobalt", "azure", "admiral", "sapphire", "lapis"]

state_capitals = {
	"Texas" => "Austin",
	"Montana" => "Helena",
	"California" => "Sacramento",
	"Arizona" => "Phoenix",
	"New York" => "Albany",
	"Florida" => "Tallahassee",
	"Illinois" => "Springfield", 
}

shades_blue.each do |blues|
	puts blues 
end

state_capitals.each do |state, capital|
	puts "The capital of #{state} is #{capital}"
end 

shades_blue.map! {|x| x + "!" }

#1.)
#Array
passing_scores = [54, 100, 99, 87, 68, 91]
#passing_scores.each do |scores|
passing_scores.delete_if {|grade| grade < 90 }
puts "The passing scores are: #{passing_scores}"

#Hash
average_temperature_jan = {
		"Austin" => "60.3",
		"Helena" => "33.3",
		"Sacramento" => "53.8",
		"Phoenix" => "67.2",
		"Albany" => "30.6",
		"Tallahassee" => "63.5",
		"Springfield" => "34.8",
}

average_temperature_jan.delete_if{|key, value| value < "50"}
puts "The warmer cities are:"
puts average_temperature_jan

#2.)
#Array
fail_scores = [54, 100, 99, 87, 68, 91]
fail_scores.keep_if { |grade| grade < 90 }
puts "The failing scores are: #{fail_scores}"

#Hash
average_temperature_jan = {
		"Austin" => "60.3",
		"Helena" => "33.3",
		"Sacramento" => "53.8",
		"Phoenix" => "67.2",
		"Albany" => "30.6",
		"Tallahassee" => "63.5",
		"Springfield" => "34.8",
}

average_temperature_jan.keep_if{|key, value| value < "50"}
puts "The cold cities are:"
puts average_temperature_jan

#3.)
#Array 
passing_scores = [54, 100, 99, 87, 68, 91]
passing_scores.include?  < 80 
#puts "The passing scores include: #{passing_scores}"

passing_scores = [54, 100, 99, 87, 68, 91]
new_scores = []
new_scores << passing_scores.select {|n| n < 80}
puts "The passing scores include:"
puts new_scores


#Hash


#4.) reject
#Array
passing_scores = [54, 100, 99, 87, 68, 91]
passing_scores.reject {|score| score < 80 }
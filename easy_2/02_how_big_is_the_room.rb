def get_side(side)
	puts "Enter the #{side} of the room in meters: "
	gets.chomp.to_f
end

def conversion(feet)
	(feet * 10.7639).round(3)
end

sqmeter = get_side("length") * get_side("width")
sqft = conversion(sqmeter)

puts "The area of the room is #{sqmeter} square meters (#{sqft} square feet)." 
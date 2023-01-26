def prompt_price(subject)
	print "What is the #{subject}? "
	num = gets.chomp
	num.to_f
end

bill = prompt_price("bill")
rate = prompt_price("tip percentage") / 100
tip = (bill * rate).round(2)
total = (bill + tip).round(2)

puts(
	[
	"The tip is $#{tip}",
	"The total is $#{total}"
	]
)
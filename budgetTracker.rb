require_relative "budget"

puts "Welcome to the app"

while TRUE
	puts "1. Enter a new goal"
	puts "4. Exit the app"
	input = gets.chomp

	case 
	when input =="1"
		puts "Name of object?"
		name = gets.chomp
		puts "Current savings towards #{name}?"
		savings = gets.chomp
		puts "Price of #{name}?"
		price = gets.chomp
		object = { name => [savings,price]}
		puts object
	when input == "4"
		exit
	end
end




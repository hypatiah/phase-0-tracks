puts "What's your hamster's name?"
name = gets.chomp
puts "How loud is your hamster on a scale from 1 to 10?"
volume = gets.chomp.to_i
puts "What's your hamster's fur color?"
color = gets.chomp
puts "Is your hamster a good candidate for adoption? (y/n)"
candidate = gets.chomp
if candidate == "y"
	candidate = true
else candidate = false
end
puts "What's your hamster's age?"
age = gets.chomp.to_i
if age == 0
 age = nil
end

if candidate == true
	puts "Your hamster #{name} has a volume of #{volume}/10, its color is #{color}, its age is #{age} and it is a GOOD candidate for adoption!"
	else puts "Your hamster #{name} has a volume of #{volume}/10, its color is #{color}, its age is #{age} and it is a BAD candidate for adoption!"
end
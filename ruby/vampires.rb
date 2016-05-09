puts "How many employees will be processed?"
employees = gets.chomp.to_i
count = 0
while count < employees
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp
	puts "What year were you born?"
	year_born = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp
	puts "Would you like to enroll in the company's health insurance? (y/n)"
	health = gets.chomp
	
	allergies = nil
	donelist = nil
	until (donelist == "y") || (allergies == "sunshine") == true #continues loop until they're done or if they put sunshine as an allergy
		puts "Please name your allergies one at a time:"
		allergies = gets. chomp
		puts "Are you done listing your allergies? (y/n)"
		donelist = gets.chomp
	end
 	age2 = 2016 - year_born #lets us verify age and year_born line up when we use it in the if statement below! 
	if ((age == age2) && ((garlic_bread == "y") || (health == "y"))) == true # if If the employee got their age right, and is willing to eat garlic bread or sign up for insurance
		puts "Probably not a vampire"
	elsif (((age != age2) && ((garlic_bread == "n") || (health == "n"))) == true) || (allergies == "sunshine") == true # If the employee got their age wrong, and hates garlic bread or waives insurance, OR put "sunshine as an allergy"
		puts "Probably a vampire"
	elsif ((age != age2) && (garlic_bread="n") && (health == "n")) == true #If the employee got their age wrong, hates garlic bread, and doesn’t want insurance
		puts "Almost certainly a vampire"
	elsif (((name == "Drake Cule") || (name == "Tu Fang"))) == true
		puts "Definitely a vampire."
	else puts "Results inconclusive."
	end
	count = count += 1 
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
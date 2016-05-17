#initialize hash and keys
designer_form = { }
name = ""
age = 0
children = 0
decor_theme = ""
#Prompt the designer/user for name, age, # of children, decor theme
puts "What is your name?"
myname = gets.chomp
puts "What is your age?"
age = gets.chomp
puts "How many children do you have?"
children = gets.chomp
puts "What is your decor theme?"
mytheme = gets.chomp
puts "Do you like velvet? (y/n)"
velvet = gets.chomp
#convert user input to appropriate data type
myname.intern
age.to_i
children.to_i
mytheme.intern
if velvet == "y"
	velvet = true
else velvet = false
end
#print hash back out to screen when designer has answered all the questions
designer_form = {:name => myname, :age => age, :children => children, :theme => mytheme, :velvet => velvet}
puts designer_form
#give user opportunity to update a key
puts "Would you like to change one of your responses? (y/n)"
change = gets.chomp
if change == "y"
	puts "Which would you like to change: myname, age, children, mytheme or velvet (please type the exact spelling listed)"
	new_key = gets.chomp
	symkey = new_key.intern
	puts "What is your new response to #{new_key}"
	new_value = gets.chomp
	designer_form[symkey] = new_value
	designer_form.rehash
else 
	puts "Ok, thanks for your response!"
end
# print newest version of hash
puts designer_form
# exit program
exit
#Pseudocode: 
#Input: spy's real name
<<<<<<< HEAD
#Output: swapped first and last, and changing all vowels to next vowel and all consonants #to the next consonantask for input, 
#Driver Code:
#First ask for first and last name 
puts "Hi secret agent, what is your real first and last name?"
real_name = gets.chomp
#split up the characters of the real_name
chopped_name = real_name.chars 
puts chopped_name
#for each element in chopped name, do the following:
chopped_name.each do |character|
	vowel = ["a", "e", "i", "o", "u"]
	if  vowel.include? character
		i = 0
		index = 0
		while character(index) == vowel(i)
			character_new = vowel(i).next
			index += 1
			i += 1
			character_new
=======
#Output: swapped first and last, and changing all vowels to next vowel and all consonants #to the next consonantask for input
#METHODS:
#next_vowel method takes vowel character and converts it to the next one
#NOTE: I realize my method does not convert all the vowels.. still needs work!
def next_vowel(string)
	vowels = "aeiou"
	#set index of string 
	index = 0
	#set index of vowels
	i = 0
	#create an empty string
	converted_string = ""
	#for each index of the string, checks if equal to corresponding vowel and if so goes to the next vowel by adding one to the index
	while index < string.length
		#start with if string has "u", converts to "a"
		if string[index] == vowels[4]
			converted_string += "a"
		#if the string has any vowel besides "u"
		elsif string[index] == vowels[i]
			converted_string += vowels[i+1]
		# for consonants doesnt change character
		else 
			converted_string += string[index]
>>>>>>> Challenge5.6
		end
		#go to next index in string
		index += 1
		#reset vowel index to zero
		i += 1
	end
	converted_string
end
next_vowel("i'm amazing ehuo")

#next_consonant method takes any consonant and converts it to the next consonant
#NOTE: I realize my method does not convert all the consonants.. still needs work!
def next_consonant(string)
	consonants = "bcdfghjklmnpqrstvwxyz"
	#set index of string 
	index = 0
	#set index of vowels
	i = 0
	#create an empty string
	converted_string = ""
	#for each index of the string, checks if equal to corresponding consonant and if so goes to the next consonant by adding one to the index
	while index < string.length
		#start with if string has "z", converts to "b"
		if string[index] == consonants[20]
			converted_string += "b"
		#if the string has any consonant besides "z"
		elsif string[index] == consonants[i]
			converted_string += consonants[i+1]
		#if string has vowels doesnt change character
		else 
			converted_string += string[index]
		end
		#go to next index in string
		index += 1
		#reset vowel index to zero
		i += 1
	end
	converted_string
end 
next_consonant("happy zaby")

<<<<<<< HEAD
##split name into two strings of first and last, then reverse the string
#switched_name = real_name.split(' ').reverse
#puts switched_name
#
#vowels = "aeiou"
#consonants = "bcdfghjklmnpqrstvwxyz"
#
##method that converts vowels to next vowel
#def vowelconvert(string)
#	vowels = "aeiou"
#	#- assign index to the input string
#	index = 0
#	#add index for vowels
#	i = 0
#	#blank space for output
#	output = ""
#	#loop index for message length
#	while index < string.length
#		#compare message with corresponding vowel index
#		if string[index] == vowels[i]
#				#add 1 to the index value of each letter in string
#				output += vowels[i + 1]
#			#add 1 to index counter
#			index += 1
#			#reset alphabet index to 0
#			i = 0
#		end
#		#add 1 to alphabet index counter
#		i += 1
#	end
#	#return output
#	output
#end

#method that converts consonants to the next consonant
=======
#DRIVER CODE
#initialize empty hash and response for while loop
name_directory = {}
response = ""
#loops through code until user wants to quit
while response != "quit"
	puts "What real first and last name would you like to encrypt?"
	name = gets.chomp
	#make name lower case to use methods easier
	name.downcase! 
	#put name through consonant and vowel methods
	new_name = next_vowel(next_consonant(name))
	##split name into array of two strings of first and last, then reverse the elements of arry
	switched_ary = new_name.split(' ').reverse
	#capitalize both first and last name as elements of the array
	first_agent = switched_ary[0].capitalize
	last_agent = switched_ary[1].capitalize
	#combine first and last name to agent_name string
	agent_name = first_agent + " " + last_agent
	#reverts name back to capitalized form since downcased above
	name = name.split(' ').map{|x| x.capitalize}.join(' ')
	#add key-value pair of name and agent_name to the name_directory hash
	name_directory[name] = agent_name
	#ask user if they would like to input another name or quit
	puts "Press enter if you would like to input another name, if done write 'quit'"
	response = gets.chomp
end
#nicely prints each key-value pair (real ==> agent name)
name_directory.each {|realnm, agentnm| puts "#{agentnm} is actually #{realnm}"}
exit 

>>>>>>> Challenge5.6




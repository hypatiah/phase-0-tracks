#Pseudocode: 
#Input: spy's real name
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





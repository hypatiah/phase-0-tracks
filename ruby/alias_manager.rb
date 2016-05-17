#Pseudocode: 
#Input: spy's real name
#Output: swapped first and last, and changing all vowels to next vowel and all consonants #to the next consonantask for input, 
#Driver Code:
#First ask for first and last name 
puts "Hi secret agent, what is your real first and last name?"
real_name = gets.chomp
#split up the characters of the real_name
chopped_name = real_name.chars 
puts chopped_name





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




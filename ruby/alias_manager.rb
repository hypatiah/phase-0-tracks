#Pseudocode: 
#Input: spy's real name
#Output: swapped first and last, and changing all vowels to next vowel and all consonants #to the next consonantask for input, 
#Driver Code:
#First ask for first and last name 
puts "Hi secret agent, what is your real first and last name?"
real_name = gets.chomp
#split name into two strings of first and last, then reverse the string
switched_name = real_name.split(' ').reverse
puts switched_name





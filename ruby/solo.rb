class Dancer
	attr_reader :height_in_cm, :name
	attr_accessor :type, :age
	#initially puts "Initializing new instance" and assigns type of dance, height and age to respective attributes
	def initialize(name, height_in_cm, age)
		puts "Initializing new dancer instance..."
		@name = name
		@type = "tango"
		@height = height_in_cm
		@age = age
	end
	#method input: song, output: singing song!
	def sing(song)
		puts "Lalala " + song + " ladeeda!"
	end
	#method that swings your hips
	def swing
		puts "#{@name} *swings hips*"
	end
	#method that calculates tempo by converting beats/second to beats/minute
	def tempo(beats_per_second)
		beats_per_minute = beats_per_second * 60 
	end
end

#DRIVER CODE
# peter = Dancer.new("Peter", 180, 21)
# peter.sing("YMCA")
# peter.swing
# peter.type = "salsa"
# peter.tempo(2)
# peter.age = "23"
# p peter

puts "Welcome to Dancer Directory, how many dancers would you like to log?"
number = gets.chomp
number = number.to_i
#initialize empty directory array
directory = []
#initialize counter
counter = 0
#perform operations until has looped through as many times as there are dancers 
until counter == number
	#ask user for name, height, age, and dance type, and then converting age and height to integer data types
	puts "What is the dancer's name?"
	name = gets.chomp
	puts "What is the dancer's height in centimeters?"
	height = gets.chomp
	height = height.to_i
	puts "How old is the dancer?"
	age = gets.chomp
	age = age.to_i
	puts "What type of dancer is #{name}?"
	dance_type = gets.chomp
	#initialize dancer instance
	dancer = Dancer.new(name, height, age)
	#assign dance type to the dancer
	dancer.type = dance_type
	#store dancer instance into directory array
	directory << dancer
	#add 1 to counter
	counter += 1
end
#loop through array and print attributes of each dancer instance
directory.each { |dancer| p dancer }


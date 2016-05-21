class Santa
	attr_reader  :ethnicity
	attr_accessor :gender, :age

	def speak 
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	#method that adds 1 year to your age
	def celebrate_birthday(age)
		@age = age + 1
	end

	#method that moves the ranking(or index rather) of the reindeer to the end of the array.. as punishment! 
	def get_mad_at(name)
	i = 0
	until i > @reindeer_ranking.length 
	if @reindeer_ranking[i] == name
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name 
	end
	i += 1
	end
	#prints reindeer ranking to check that works
	p @reindeer_ranking
	end
	
	#SETTERS
	# def gender_new(gender)
		# @gender = gender 
	#end

	# GETTERS
	# def age
	# 	@age
	# end

	#def ethnicity
	#	@ethnicity
	#end


end

#DRIVERCODE
#initalizes new Santa instance called babysanta with a "female" gender and "middle eastern" ethnicity
babysanta = Santa.new("female", "middle eastern")
#series of tests to check our methods 
babysanta.speak
babysanta.eat_milk_and_cookies("snickerdoodle")
p babysanta.celebrate_birthday(5)
babysanta.get_mad_at("Dasher")
# p babysanta.gender_new("newgender")
p babysanta.age
p babysanta.ethnicity
p babysanta.gender = "heshe"




#initialize empty reindeer array
reindeer = []
gender = ["male", "female", "gender3", "gender4", "gender5"]
ethnicity = ["caucasian", "asian", "middle eastern", "black", "latino"]
#adds the respective gender and ethnicity element of the arrays into the reindeer array, and does the loop 5 times since thats the length of gender array (can interchange with ethnicity since of same length)
gender.length.times do |index|
	reindeer << Santa.new(gender[index], ethnicity[index])
end
p reindeer


#initializes empty santa directory
santa_directory = []
#create sample gender/ethnicity arrays
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#initialize counter
i = 0
#iterates loop 50 times
until i > 49
	#initializes santa as a Santa instance with a random gender and ethnicity attributes (selected from sample gender/ethnicity arrays  above)
	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	#assigns santa age attribute to be between 0 and 140
	santa.age = rand(0..140)
	#adds santa, which is a Santa instance, to the santa directory array
	santa_directory << santa
	#adds 1 to the counter
	i += 1
end

#test that random gender/ethnicity/ age between 0 and 140 is called
santa_directory.each { |santa| p santa.gender, santa.ethnicity, santa.age}






class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

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

	def celebrate_birthday(age)
		@age = age + 1
	end

	def get_mad_at(name)
	i = 0
	until i > @reindeer_ranking.length 
	if @reindeer_ranking[i] == name
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name 
	end
	i += 1
	end
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


babysanta = Santa.new("female", "middle eastern")
babysanta.speak
babysanta.eat_milk_and_cookies("snickerdoodle")
p babysanta.celebrate_birthday(5)
babysanta.get_mad_at("Dasher")
# p babysanta.gender_new("newgender")
p babysanta.age
p babysanta.ethnicity
p babysanta.gender = "heshe"



#DRIVERCODE
reindeer = []
gender = ["male", "female", "gender3", "gender4", "gender5"]
ethnicity = ["caucasian", "asian", "middle eastern", "black", "latino"]
gender.length.times do |index|
	reindeer << Santa.new(gender[index], ethnicity[index])
end

p reindeer







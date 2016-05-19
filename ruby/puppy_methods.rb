class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(intgr)
  	intgr.times {puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  #input: human years
  #output: dog years
  def dog_years(hum_age)
  	dog_age = hum_age * 7
  	puts "Your dog age is #{dog_age}"
  end

  def shake(name)
  	puts "Nice to meet you #{name}!"
  end

  def initialize
  	puts "Initializing new puppy instance ..."
  end

end


#DRIVER CODE
#initialize instance of puppy
spot = Puppy.new
#check that spot can fetch
spot.fetch("ball")
spot.speak(4)
spot.roll_over
spot.dog_years(5)
spot.shake("Alison")

class Kitten
	def initialize
		puts "Initializing new kitten instance ..."
	end

	def toilet_paper_rolls(integer)
		puts "Kitten! You unrolled #{integer} rolls of toilet paper!"
	end

	def cat_lives(integer, misbehavior)
		puts "Bad kitten! Why did you #{misbehavior}?"
		lives_left = 9 - integer
		puts "Now you only have #{lives_left} lives left!"
	end
end

#initialize empty array
cat_directory = []
#initialize index
i = 0
until i > 49
	kitten = Kitten.new
	cat_directory << kitten
	i += 1
end
cat_directory.each do |kitten_name|
	kitten_name.toilet_paper_rolls(6)
	kitten_name.cat_lives(3, "chew my finger")
end


#DRIVER CODE
#initialize instance of kitten
kitten = Kitten.new
kitten.toilet_paper_rolls(5)
kitten.cat_lives(3, "pee on my bed")